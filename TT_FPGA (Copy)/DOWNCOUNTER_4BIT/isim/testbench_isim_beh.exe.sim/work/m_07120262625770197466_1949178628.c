/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/mnt/sda2/DOC/NH_2024_2025_HK_01/ICSL316764/TT_FPGA/DOWNCOUNTER_4BIT/testbench.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0, 0, 0};
static int ng4[] = {19, 0, 0, 0};
static int ng5[] = {1, 0, 0, 0};



static void Initial_19_0(char *t0)
{
    char t6[16];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);

LAB4:    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(26, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(27, ng0);
    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB7:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(30, ng0);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB25:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB43:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB61:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB62;

LAB63:    goto LAB1;

LAB8:    xsi_set_current_line(27, ng0);

LAB10:    xsi_set_current_line(28, ng0);
    t14 = (t0 + 1448);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t17) == 0)
        goto LAB11;

LAB13:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB14:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB16;

LAB15:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB14;

LAB16:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB15;

LAB17:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB21;

LAB19:    if (*((unsigned int *)t5) == 0)
        goto LAB18;

LAB20:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB21:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB23;

LAB22:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB18:    *((unsigned int *)t13) = 1;
    goto LAB21;

LAB23:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB22;

LAB24:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB7;

LAB26:    xsi_set_current_line(30, ng0);

LAB28:    xsi_set_current_line(31, ng0);
    t14 = (t0 + 1448);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB32;

LAB30:    if (*((unsigned int *)t17) == 0)
        goto LAB29;

LAB31:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB32:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB34;

LAB33:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    *((unsigned int *)t13) = 1;
    goto LAB32;

LAB34:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB33;

LAB35:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t5) == 0)
        goto LAB36;

LAB38:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB39:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB41;

LAB40:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB36:    *((unsigned int *)t13) = 1;
    goto LAB39;

LAB41:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB40;

LAB42:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB25;

LAB44:    xsi_set_current_line(35, ng0);

LAB46:    xsi_set_current_line(36, ng0);
    t14 = (t0 + 1448);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB50;

LAB48:    if (*((unsigned int *)t17) == 0)
        goto LAB47;

LAB49:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB50:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB52;

LAB51:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB47:    *((unsigned int *)t13) = 1;
    goto LAB50;

LAB52:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB51;

LAB53:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB57;

LAB55:    if (*((unsigned int *)t5) == 0)
        goto LAB54;

LAB56:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB57:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB59;

LAB58:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB54:    *((unsigned int *)t13) = 1;
    goto LAB57;

LAB59:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB58;

LAB60:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB43;

LAB62:    xsi_set_current_line(38, ng0);

LAB64:    xsi_set_current_line(39, ng0);
    t14 = (t0 + 1448);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB68;

LAB66:    if (*((unsigned int *)t17) == 0)
        goto LAB65;

LAB67:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB68:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB70;

LAB69:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB65:    *((unsigned int *)t13) = 1;
    goto LAB68;

LAB70:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB69;

LAB71:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB75;

LAB73:    if (*((unsigned int *)t5) == 0)
        goto LAB72;

LAB74:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB75:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB77;

LAB76:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB78;
    goto LAB1;

LAB72:    *((unsigned int *)t13) = 1;
    goto LAB75;

LAB77:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB76;

LAB78:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB61;

}


extern void work_m_07120262625770197466_1949178628_init()
{
	static char *pe[] = {(void *)Initial_19_0};
	xsi_register_didat("work_m_07120262625770197466_1949178628", "isim/testbench_isim_beh.exe.sim/work/m_07120262625770197466_1949178628.didat");
	xsi_register_executes(pe);
}
