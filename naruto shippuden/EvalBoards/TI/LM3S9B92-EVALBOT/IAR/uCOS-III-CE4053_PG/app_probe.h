/*
*********************************************************************************************************
*                                               uC/PROBE
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
* Filename      : app_probe.h
* Version       : V1.00
* Programmer(s) : FT
*********************************************************************************************************
*/

#ifndef  APP_PROBE_H
#define  APP_PROBE_H

/*
*********************************************************************************************************
*                                              INCLUDE FILES
*********************************************************************************************************
*/

#include    <app_cfg.h>
#include    <cpu.h>
#include    <bsp.h>
#include    <lib_def.h>

#include    <probe_com.h>

#if (PROBE_COM_CFG_RS232_EN > 0)
#include    <probe_rs232.h>
#endif

#if (PROBE_COM_CFG_TCPIP_EN > 0)
#include    <probe_tcpip.h>
#endif
#endif


/*
*********************************************************************************************************
*                                                 EXTERNS
*********************************************************************************************************
*/

#ifdef   APP_PROBE_MODULE
#define  APP_PROBE_MODULE_EXT
#else
#define  APP_PROBE_MODULE_EXT  extern
#endif


/*
*********************************************************************************************************
*                                                 DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               DATA TYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            GLOBAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                                 MACRO'S
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                           FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void  App_ProbeInit  (void);

/*
*********************************************************************************************************
*                                          CONFIGURATION ERRORS
*********************************************************************************************************
*/

