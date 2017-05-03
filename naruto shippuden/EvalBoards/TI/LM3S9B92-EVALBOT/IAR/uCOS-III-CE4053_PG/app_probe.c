/*
*********************************************************************************************************
*                                              EXAMPLE CODE
*
*                          (c) Copyright 2003-2009; Micrium, Inc.; Weston, FL
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
*                                           uC/Probe
*                                      Application Code
*
* Filename      : app_probe.c
* Version       : V1.00
* Programmer(s) : FT
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#define  APP_PROBE_MODULE
#include <app_probe.h>


/*
*********************************************************************************************************
*                                                 ENABLE
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                       LOCAL GLOBAL VARIABLES
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                    LOCAL CONFIGURATION ERRORS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                         App_ProbeInit()
*
* Description : Initialize all uC/Probe modules.
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Note(s)     : none
*********************************************************************************************************
*/

void  App_ProbeInit (void)
{
#if (APP_CFG_PROBE_COM_EN > 0) && \
    (PROBE_COM_CFG_RS232_EN == DEF_ENABLED)
    CPU_BOOLEAN  init;
#endif


#if (APP_CFG_PROBE_COM_EN > 0)
    ProbeCom_Init();                                            /* Initialize the uC/Probe communications module         */

#if (PROBE_COM_CFG_RS232_EN == DEF_ENABLED)
    init = ProbeRS232_Init(57600);
    if (init == DEF_OK) {
        ProbeRS232_RxIntEn();
    }
#endif

#if (PROBE_COM_CFG_TCPIP_EN == DEF_ENABLED)
    ProbeTCPIP_Init();
#endif
#endif
}
