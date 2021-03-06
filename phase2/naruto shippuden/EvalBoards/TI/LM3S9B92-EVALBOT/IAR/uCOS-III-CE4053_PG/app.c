/*
*********************************************************************************************************
*                                              EXAMPLE CODE
*
*                          (c) Copyright 2009-2010; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*               Knowledge of the source code may NOT be used to develop a similar product.
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                            EXAMPLE CODE
*
* Filename      : app.c
* Version       : V1.00
* Programmer(s) : FUZZI
*
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/

#include <includes.h>
#include <stdio.h>
#include "driverlib/timer.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include <os.h>
#include "splay.h"
#include "avl.h"
#include "tree234.h"

/*
*********************************************************************************************************
*                                             LOCAL DEFINES
*********************************************************************************************************
*/

#define ONESECONDTICK             7000000

#define TASK1PERIOD                   5
#define TASK2PERIOD                   5
#define TASK3PERIOD                   10

#define WORKLOAD1                     2
#define WORKLOAD2                     2
#define WORKLOAD3                     1
#define WORKLOAD4                     1
#define WORKLOAD5                     1


#define TIMERDIV                      (BSP_CPUClkFreq() / (CPU_INT32U)OSCfg_TickRate_Hz)
#define TIMER_EN                      0



/*
*********************************************************************************************************
*                                            LOCAL VARIABLES
*********************************************************************************************************
*/

static  OS_TCB       AppTaskStartTCB;
static  CPU_STK      AppTaskStartStk[APP_TASK_START_STK_SIZE];

static  OS_TCB       AppTaskOneTCB;
static  CPU_STK      AppTaskOneStk[APP_TASK_ONE_STK_SIZE];

static  OS_TCB       AppTaskTwoTCB;
static  CPU_STK      AppTaskTwoStk[APP_TASK_TWO_STK_SIZE];


static  OS_TCB       AppTaskThreeTCB;
static  CPU_STK      AppTaskThreeStk[APP_TASK_TWO_STK_SIZE];

static  OS_TCB       AppTaskFourTCB;
static  CPU_STK      AppTaskFourStk[APP_TASK_TWO_STK_SIZE];

static  OS_TCB       AppTaskFiveTCB;
static  CPU_STK      AppTaskFiveStk[APP_TASK_TWO_STK_SIZE];


//OS_Q            DummyQ;
OS_MUTEX        MutexOne, MutexTwo, MutexThree;

//static  OS_TCB       AppTaskSixTCB;
//static  CPU_STK      AppTaskSixStk[APP_TASK_TWO_STK_SIZE];

//static  OS_TCB       AppTaskSevenTCB;
//static  CPU_STK      AppTaskSevenStk[APP_TASK_TWO_STK_SIZE];

CPU_INT32U      iCnt = 0;
CPU_INT08U      Left_tgt;
CPU_INT08U      Right_tgt;
CPU_INT32U      iToken  = 0;
CPU_INT32U      iCounter= 1;
CPU_INT32U      iMove   = 10;
CPU_INT32U      measure=0;
 //CPU_TS        ts_start_cal, ts_end_cal;

/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

static  void        AppRobotMotorDriveSensorEnable    ();
        void        IntWheelSensor                    ();
        void        RoboTurn                          (tSide dir, CPU_INT16U seg, CPU_INT16U speed);

static  void        AppTaskStart                 (void  *p_arg);
static  void        AppTaskOne                   (void  *p_arg);
static  void        AppTaskTwo                   (void  *p_arg);
static  void        AppTaskThree                 (void  *p_arg);
static  void        AppTaskFour                  (void  *p_arg);
static  void        AppTaskFive                  (void  *p_arg);
//static  void        AppTaskSix                   (void  *p_arg);
//static  void        AppTaskSeven                 (void  *p_arg);

/*
*********************************************************************************************************
*                                          main()     
*
* Description : This is the standard entry point for C code.  It is assumed that your code will call
*               main() once you have performed all necessary initialization.
*
* Arguments   : none
*
* Returns     : none
*********************************************************************************************************
*/

int  main (void)
{
    OS_ERR  err;
   
    BSP_IntDisAll();                                            /* Disable all interrupts.                              */
    OSInit(&err);                                               /* Init uC/OS-III.                                      */

    OSMemCreate((OS_MEM    *)&MyPartition,                  
                (CPU_CHAR *) "MyPartition",                 
                (void      *)&MyPartitionStorage[0],      
                (OS_MEM_QTY ) MQTY,                            
                (OS_MEM_SIZE)sizeof(Tree),                            
                (OS_ERR    *)&err);        
    OSMemCreate((OS_MEM    *)&AMyPartition,                  
                (CPU_CHAR *) "AMyPartition",                 
                (void      *)&AMyPartitionStorage[0],      
                (OS_MEM_QTY ) 6,                            
                (OS_MEM_SIZE)sizeof(ATree),                            
                (OS_ERR    *)&err);        
    
    err=Tree234StorageCreate();
    
    OSTaskCreate((OS_TCB     *)&AppTaskStartTCB,           /* Create the start task                                */
                 (CPU_CHAR   *)"App Task Start",
                 (OS_TASK_PTR ) AppTaskStart,
                 (void       *) 0,
                 (OS_PRIO     ) APP_TASK_START_PRIO,
                 (CPU_STK    *)&AppTaskStartStk[0],
                 (CPU_STK_SIZE) APP_TASK_START_STK_SIZE / 10u,
                 (CPU_STK_SIZE) APP_TASK_START_STK_SIZE,
                 (OS_MSG_QTY  ) 0u,
                 (OS_TICK     ) 0u,
                 (void       *) (CPU_INT32U) 0, 
                 (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR),
                 (OS_ERR     *)&err);

    OSStart(&err);                                              /* Start multitasking (i.e. give control to uC/OS-III). */
}



/*
*********************************************************************************************************
*                                          STARTUP TASK
*
* Description : This is an example of a startup task.  As mentioned in the book's text, you MUST
*               initialize the ticker only once multitasking has started.
*
* Arguments   : p_arg   is the argument passed to 'AppTaskStart()' by 'OSTaskCreate()'.
*
* Returns     : none
*
* Notes       : 1) The first line of code is used to prevent a compiler warning because 'p_arg' is not
*                  used.  The compiler should not generate any code for this statement.
*********************************************************************************************************
*/

static  void  AppTaskStart (void  *p_arg)
{
    CPU_INT32U  clk_freq;
    CPU_INT32U  ulPHYMR0;
    CPU_INT32U  cnts;
    OS_ERR      err;

   (void)&p_arg;

    BSP_Init();                                                 /* Initialize BSP functions                             */
    CPU_Init();                                                 /* Initialize the uC/CPU services                       */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_ETH);                  /* Enable and Reset the Ethernet Controller.            */
    SysCtlPeripheralReset(SYSCTL_PERIPH_ETH);
    ulPHYMR0 = EthernetPHYRead(ETH_BASE, PHY_MR0);              /* Power Down PHY                                       */
    EthernetPHYWrite(ETH_BASE, PHY_MR0, ulPHYMR0 | PHY_MR0_PWRDN);
    SysCtlPeripheralDeepSleepDisable(SYSCTL_PERIPH_ETH);
    clk_freq = BSP_CPUClkFreq();                                /* Determine SysTick reference freq.                    */
    cnts     = clk_freq / (CPU_INT32U)OSCfg_TickRate_Hz;        /* Determine nbr SysTick increments                     */
    OS_CPU_SysTickInit(cnts);                                   /* Init uC/OS periodic time src (SysTick).              */
    CPU_TS_TmrFreqSet(clk_freq);
    
    
    
    /* Enable Wheel ISR Interrupt */
    AppRobotMotorDriveSensorEnable();
    
     /* Create Dummy Queue */
   // OSQCreate((OS_Q *)&DummyQ, (CPU_CHAR *)"Dummy Queue", (OS_MSG_QTY)5, (OS_ERR *)&err);
    
    
     /* Create Mutexes */
    OSMutexCreate_Mod((OS_MUTEX *)&MutexOne, (CPU_CHAR *)2, (OS_ERR *)&err,0);
    OSMutexCreate_Mod((OS_MUTEX *)&MutexTwo, (CPU_CHAR *)3, (OS_ERR *)&err,5000);
    OSMutexCreate_Mod((OS_MUTEX *)&MutexThree, (CPU_CHAR *)3, (OS_ERR *)&err,5000);
    
    
    
    /* Initialise the 2 Main Tasks to  Deleted State */

    OSRecTaskCreate((OS_TCB     *)&AppTaskOneTCB, (CPU_CHAR   *)"App Task One", (OS_TASK_PTR ) AppTaskOne, (void       *) 0, (OS_PRIO     ) APP_TASK_ONE_PRIO, (CPU_STK    *)&AppTaskOneStk[0], (CPU_STK_SIZE) APP_TASK_ONE_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_ONE_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *)(CPU_INT32U) 1, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 5000);
    OSRecTaskCreate((OS_TCB     *)&AppTaskTwoTCB, (CPU_CHAR   *)"App Task Two", (OS_TASK_PTR ) AppTaskTwo, (void       *) 0, (OS_PRIO     ) APP_TASK_TWO_PRIO, (CPU_STK    *)&AppTaskTwoStk[0], (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *) (CPU_INT32U) 2, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 5000);
//    OSRecTaskCreate((OS_TCB     *)&AppTaskThreeTCB, (CPU_CHAR   *)"App Task Three", (OS_TASK_PTR ) AppTaskThree, (void       *) 0, (OS_PRIO     ) APP_TASK_THREE_PRIO, (CPU_STK    *)&AppTaskThreeStk[0], (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *) (CPU_INT32U) 2, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 25000);
//    OSRecTaskCreate((OS_TCB     *)&AppTaskFourTCB, (CPU_CHAR   *)"App Task Four", (OS_TASK_PTR ) AppTaskFour, (void       *) 0, (OS_PRIO     ) APP_TASK_FOUR_PRIO, (CPU_STK    *)&AppTaskFourStk[0], (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *) (CPU_INT32U) 2, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 40000);
    OSRecTaskCreate((OS_TCB     *)&AppTaskFiveTCB, (CPU_CHAR   *)"App Task Five", (OS_TASK_PTR ) AppTaskFive, (void       *) 0, (OS_PRIO     ) APP_TASK_FIVE_PRIO, (CPU_STK    *)&AppTaskFiveStk[0], (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *) (CPU_INT32U) 2, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 10000);
  //  OSRecTaskCreate((OS_TCB     *)&AppTaskSixTCB, (CPU_CHAR   *)"App Task Six", (OS_TASK_PTR ) AppTaskSix, (void       *) 0, (OS_PRIO     ) APP_TASK_SIX_PRIO, (CPU_STK    *)&AppTaskSixStk[0], (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *) (CPU_INT32U) 2, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 10000);
  //  OSRecTaskCreate((OS_TCB     *)&AppTaskSevenTCB, (CPU_CHAR   *)"App Task Seven", (OS_TASK_PTR ) AppTaskSeven, (void       *) 0, (OS_PRIO     ) APP_TASK_SEVEN_PRIO, (CPU_STK    *)&AppTaskSevenStk[0], (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_TWO_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *) (CPU_INT32U) 2, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err, (OS_PERIOD) 10000);
//OSTaskCreate((OS_TCB     *)&AppTaskOneTCB, (CPU_CHAR   *)"App Task One", (OS_TASK_PTR ) AppTaskOne, (void       *) 0, (OS_PRIO     ) APP_TASK_ONE_PRIO, (CPU_STK    *)&AppTaskOneStk[0], (CPU_STK_SIZE) APP_TASK_ONE_STK_SIZE / 10u, (CPU_STK_SIZE) APP_TASK_ONE_STK_SIZE, (OS_MSG_QTY  ) 0u, (OS_TICK     ) 0u, (void       *)(CPU_INT32U) 1, (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR), (OS_ERR     *)&err);
    
    
   
    // for the synchronous release of all tasks  
    OS_PrioInsert(6);
     period_of_task_in_rdylist=min_tcb->t_tcb->data;
     min_tcb->t_tcb->p_tcb->Prio=6;
     OS_RdyListInsertTail(min_tcb->t_tcb->p_tcb);
    /* Delete this task */
    OSTaskDel((OS_TCB *)0, &err);
    
}

static  void  AppTaskFive (void  *p_arg)
{   
    OS_ERR      err;
    CPU_INT32U  i=0,k,j=0;
    
    BSP_LED_On(0u);
   for(k=0; k<WORKLOAD4; k++)
    {
      for(i=0; i <ONESECONDTICK/4; i++){
        j = ((i * 2)+j);
        //j++;
      }
     }
    
    BSP_LED_Off(0u);
   
  OSRecTaskDelete((OS_TCB *)0, &err);

}

static  void  AppTaskThree (void  *p_arg)
{ 
    OS_ERR      err;
    CPU_INT32U  k, i=0, j;
  
   RoboTurn(FRONT, 16, 50);
   for(k=0; k<700000*114; k++)
    {
      i++; 
    }
    
   OSRecTaskDelete((OS_TCB *)0, &err);   

}


static  void  AppTaskFour (void  *p_arg)
{  
    OS_ERR      err;
    CPU_INT32U  i=0,k,j=0;
 
    
   
      RoboTurn(BACK, 16, 50);
     
    
     for(k=0; k<700000*14; k++)
    {
      i++; 
    }
    
   OSRecTaskDelete((OS_TCB *)0, &err);

}

static  void  AppTaskOne (void  *p_arg)
{   
    OS_ERR      err;
    CPU_INT32U  i=0,k,j=0;
    CPU_TS ts;
    OS_MSG_SIZE msg_size;
    
    
    
   // OSQPend(&DummyQ, TASK1PERIOD * 200, OS_OPT_PEND_BLOCKING, &msg_size, &ts, &err);
//    ts_start_cal = OS_TS_GET();
    OSMutexPend_Mod((OS_MUTEX *)&MutexTwo, (OS_TICK )0, (OS_OPT )OS_OPT_PEND_BLOCKING, (CPU_TS *)&ts, (OS_ERR *)&err);
  //  ts_end_cal = OS_TS_GET() - ts_start_cal;
    
    OSMutexPend_Mod((OS_MUTEX *)&MutexThree, (OS_TICK )0, (OS_OPT )OS_OPT_PEND_BLOCKING, (CPU_TS *)&ts, (OS_ERR *)&err);
    
   
   BSP_LED_On(1u);  //left
   for(k=0; k<WORKLOAD4; k++)
    {
      for(i=0; i <ONESECONDTICK/4; i++){
        j = ((i * 2)+j);
        //j++;
      }
     }
    
    BSP_LED_Off(1u);
   
   //ts_start_cal = OS_TS_GET();
   OSMutexPost_Mod((OS_MUTEX *)&MutexTwo, (OS_OPT )OS_OPT_POST_NONE, (OS_ERR *)&err);
 //  ts_end_cal = OS_TS_GET() - ts_start_cal;
   
   OSMutexPost_Mod((OS_MUTEX *)&MutexThree, (OS_OPT )OS_OPT_POST_NONE, (OS_ERR *)&err);
   
  OSRecTaskDelete((OS_TCB *)0, &err);

}

void  AppTaskTwo (void  *p_arg)
{   
    OS_ERR      err;
    CPU_INT32U  i,k,j=0;
     CPU_TS ts;
     //static CPU_INT32U tstart;
 //tstart=OS_TS_GET();
    
    
   OSMutexPend_Mod((OS_MUTEX *)&MutexThree, (OS_TICK )0, (OS_OPT )OS_OPT_PEND_BLOCKING, (CPU_TS *)&ts, (OS_ERR *)&err);
   
     BSP_LED_On(2u); // right

    
   for(k=0; k<WORKLOAD4; k++)
    {
      for(i=0; i <ONESECONDTICK/4; i++){
        j = ((i * 2)+j);
        //j++;
      }
     }
   BSP_LED_Off(2u);
   
   
    //OSMutexPend((OS_MUTEX *)&MutexTwo, (OS_TICK )0, (OS_OPT )OS_OPT_PEND_BLOCKING, (CPU_TS *)&ts, (OS_ERR *)&err);

    //OSMutexPost((OS_MUTEX *)&MutexTwo, (OS_OPT )OS_OPT_POST_NONE, (OS_ERR *)&err);

   OSMutexPost_Mod((OS_MUTEX *)&MutexThree, (OS_OPT )OS_OPT_POST_NONE, (OS_ERR *)&err);
   
    OSRecTaskDelete((OS_TCB *)0, &err);

}


static  void  AppRobotMotorDriveSensorEnable ()
{
    BSP_WheelSensorEnable();
    BSP_WheelSensorIntEnable(RIGHT_SIDE, SENSOR_A, (CPU_FNCT_VOID)IntWheelSensor);
    BSP_WheelSensorIntEnable(LEFT_SIDE, SENSOR_A, (CPU_FNCT_VOID)IntWheelSensor);
}


void IntWheelSensor()
{
	CPU_INT32U         ulStatusR_A;
	CPU_INT32U         ulStatusL_A;

	static CPU_INT08U CountL = 0;
	static CPU_INT08U CountR = 0;

	static CPU_INT08U data = 0;

	ulStatusR_A = GPIOPinIntStatus(RIGHT_IR_SENSOR_A_PORT, DEF_TRUE);
	ulStatusL_A = GPIOPinIntStatus(LEFT_IR_SENSOR_A_PORT, DEF_TRUE);

        if (ulStatusR_A & RIGHT_IR_SENSOR_A_PIN)
        {
          GPIOPinIntClear(RIGHT_IR_SENSOR_A_PORT, RIGHT_IR_SENSOR_A_PIN);           /* Clear interrupt.*/
          CountR = CountR + 1;
        }

        if (ulStatusL_A & LEFT_IR_SENSOR_A_PIN)
        {
          GPIOPinIntClear(LEFT_IR_SENSOR_A_PORT, LEFT_IR_SENSOR_A_PIN);
          CountL = CountL + 1;
        }

	if((CountL >= Left_tgt) && (CountR >= Right_tgt))
        {
          data = 0x11;
          Left_tgt = 0;
          Right_tgt = 0;
          CountL = 0;
          CountR = 0;
          BSP_MotorStop(LEFT_SIDE);
          BSP_MotorStop(RIGHT_SIDE);
        }
        else if(CountL >= Left_tgt)
        {
          data = 0x10;
          Left_tgt = 0;
          CountL = 0;
          BSP_MotorStop(LEFT_SIDE);
        }
        else if(CountR >= Right_tgt)
        {
          data = 0x01;
          Right_tgt = 0;
          CountR = 0;
          BSP_MotorStop(RIGHT_SIDE);
        }
        return;
}

void RoboTurn(tSide dir, CPU_INT16U seg, CPU_INT16U speed)
{
	Left_tgt = seg;
        Right_tgt = seg;

	BSP_MotorStop(LEFT_SIDE);
	BSP_MotorStop(RIGHT_SIDE);

        BSP_MotorSpeed(LEFT_SIDE, speed <<8u);
	BSP_MotorSpeed(RIGHT_SIDE,speed <<8u);

	switch(dir)
	{
            case FRONT :
                    BSP_MotorDir(RIGHT_SIDE,FORWARD);
                    BSP_MotorDir(LEFT_SIDE,FORWARD);
                    BSP_MotorRun(LEFT_SIDE);
                    BSP_MotorRun(RIGHT_SIDE);
                    break;
                    
            case BACK :
                    BSP_MotorDir(LEFT_SIDE,REVERSE);
                    BSP_MotorDir(RIGHT_SIDE,REVERSE);
                    BSP_MotorRun(RIGHT_SIDE);
                    BSP_MotorRun(LEFT_SIDE);
                    break;
                    
            case LEFT_SIDE :
                    BSP_MotorDir(RIGHT_SIDE,FORWARD);
                    BSP_MotorDir(LEFT_SIDE,REVERSE);
                    //BSP_MotorSpeed(RIGHT_SIDE,(speed) <<7u);
                    BSP_MotorRun(LEFT_SIDE);
                    BSP_MotorRun(RIGHT_SIDE);
                    break;
                    
            case RIGHT_SIDE:
                    BSP_MotorDir(LEFT_SIDE,FORWARD);
                    BSP_MotorDir(RIGHT_SIDE,REVERSE);
                    //BSP_MotorSpeed(LEFT_SIDE,(speed) <<7u);
                    BSP_MotorRun(RIGHT_SIDE);
                    BSP_MotorRun(LEFT_SIDE);
                    break;
                    
            default:
                    BSP_MotorStop(LEFT_SIDE);
                    BSP_MotorStop(RIGHT_SIDE);
                    break;
	}

	return;
}

#if(TIMER_EN == 1)
unsigned long TimerTick(void)
{
    return((TimerValueGet(TIMER3_BASE, TIMER_A)/TIMERDIV));
}

void TimerReset(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER3);
    SysCtlPeripheralReset(SYSCTL_PERIPH_TIMER3);
    TimerConfigure(TIMER3_BASE, TIMER_CFG_32_BIT_PER_UP);
    TimerLoadSet(TIMER3_BASE, TIMER_BOTH, 0xffffffff);
    TimerEnable(TIMER3_BASE, TIMER_BOTH);
}
#endif