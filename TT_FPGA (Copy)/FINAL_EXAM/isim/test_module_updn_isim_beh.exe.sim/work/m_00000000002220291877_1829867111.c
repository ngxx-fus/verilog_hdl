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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/DOC/NH_2024_2025_HK_01/ICSL316764/TT_FPGA/FINAL_EXAM/TEST_UD.v";
static int ng1[] = {0, 0};
static int ng2[] = {0, 0, 0, 0};
static int ng3[] = {35, 0, 0, 0};
static int ng4[] = {1, 0, 0, 0};
static int ng5[] = {1, 0};
static int ng6[] = {5, 0, 0, 0};



static void Initial_24_0(char *t0)
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

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);

LAB4:    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB6:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB24:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB42:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB60:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB78:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB79;

LAB80:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB96:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB97;

LAB98:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB114:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_less(t6, 33, t4, 33, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB115;

LAB116:    goto LAB1;

LAB7:    xsi_set_current_line(31, ng0);

LAB9:    xsi_set_current_line(32, ng0);
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
        goto LAB13;

LAB11:    if (*((unsigned int *)t17) == 0)
        goto LAB10;

LAB12:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB13:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB15;

LAB14:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB15:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB14;

LAB16:    xsi_set_current_line(32, ng0);
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
        goto LAB20;

LAB18:    if (*((unsigned int *)t5) == 0)
        goto LAB17;

LAB19:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB20:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB22;

LAB21:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    *((unsigned int *)t13) = 1;
    goto LAB20;

LAB22:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB21;

LAB23:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB6;

LAB25:    xsi_set_current_line(35, ng0);

LAB27:    xsi_set_current_line(36, ng0);
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
        goto LAB31;

LAB29:    if (*((unsigned int *)t17) == 0)
        goto LAB28;

LAB30:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB31:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB33;

LAB32:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB28:    *((unsigned int *)t13) = 1;
    goto LAB31;

LAB33:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB32;

LAB34:    xsi_set_current_line(36, ng0);
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
        goto LAB38;

LAB36:    if (*((unsigned int *)t5) == 0)
        goto LAB35;

LAB37:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB38:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB40;

LAB39:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB35:    *((unsigned int *)t13) = 1;
    goto LAB38;

LAB40:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB39;

LAB41:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB24;

LAB43:    xsi_set_current_line(39, ng0);

LAB45:    xsi_set_current_line(40, ng0);
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
        goto LAB49;

LAB47:    if (*((unsigned int *)t17) == 0)
        goto LAB46;

LAB48:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB49:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB51;

LAB50:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB46:    *((unsigned int *)t13) = 1;
    goto LAB49;

LAB51:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB50;

LAB52:    xsi_set_current_line(40, ng0);
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
        goto LAB56;

LAB54:    if (*((unsigned int *)t5) == 0)
        goto LAB53;

LAB55:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB56:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB58;

LAB57:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    *((unsigned int *)t13) = 1;
    goto LAB56;

LAB58:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB57;

LAB59:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB42;

LAB61:    xsi_set_current_line(43, ng0);

LAB63:    xsi_set_current_line(44, ng0);
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
        goto LAB67;

LAB65:    if (*((unsigned int *)t17) == 0)
        goto LAB64;

LAB66:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB67:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB69;

LAB68:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB64:    *((unsigned int *)t13) = 1;
    goto LAB67;

LAB69:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB68;

LAB70:    xsi_set_current_line(44, ng0);
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
        goto LAB74;

LAB72:    if (*((unsigned int *)t5) == 0)
        goto LAB71;

LAB73:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB74:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB76;

LAB75:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB71:    *((unsigned int *)t13) = 1;
    goto LAB74;

LAB76:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB75;

LAB77:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB60;

LAB79:    xsi_set_current_line(47, ng0);

LAB81:    xsi_set_current_line(48, ng0);
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
        goto LAB85;

LAB83:    if (*((unsigned int *)t17) == 0)
        goto LAB82;

LAB84:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB85:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB87;

LAB86:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB88;
    goto LAB1;

LAB82:    *((unsigned int *)t13) = 1;
    goto LAB85;

LAB87:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB86;

LAB88:    xsi_set_current_line(48, ng0);
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
        goto LAB92;

LAB90:    if (*((unsigned int *)t5) == 0)
        goto LAB89;

LAB91:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB92:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB94;

LAB93:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB89:    *((unsigned int *)t13) = 1;
    goto LAB92;

LAB94:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB93;

LAB95:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB78;

LAB97:    xsi_set_current_line(51, ng0);

LAB99:    xsi_set_current_line(52, ng0);
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
        goto LAB103;

LAB101:    if (*((unsigned int *)t17) == 0)
        goto LAB100;

LAB102:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB103:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB105;

LAB104:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB106;
    goto LAB1;

LAB100:    *((unsigned int *)t13) = 1;
    goto LAB103;

LAB105:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB104;

LAB106:    xsi_set_current_line(52, ng0);
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
        goto LAB110;

LAB108:    if (*((unsigned int *)t5) == 0)
        goto LAB107;

LAB109:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB110:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB112;

LAB111:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB113;
    goto LAB1;

LAB107:    *((unsigned int *)t13) = 1;
    goto LAB110;

LAB112:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB111;

LAB113:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB96;

LAB115:    xsi_set_current_line(55, ng0);

LAB117:    xsi_set_current_line(56, ng0);
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
        goto LAB121;

LAB119:    if (*((unsigned int *)t17) == 0)
        goto LAB118;

LAB120:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;

LAB121:    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    *((unsigned int *)t13) = t27;
    *((unsigned int *)t24) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB123;

LAB122:    t32 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t32 & 1U);
    t33 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t13, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB124;
    goto LAB1;

LAB118:    *((unsigned int *)t13) = 1;
    goto LAB121;

LAB123:    t28 = *((unsigned int *)t13);
    t29 = *((unsigned int *)t25);
    *((unsigned int *)t13) = (t28 | t29);
    t30 = *((unsigned int *)t24);
    t31 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t30 | t31);
    goto LAB122;

LAB124:    xsi_set_current_line(56, ng0);
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
        goto LAB128;

LAB126:    if (*((unsigned int *)t5) == 0)
        goto LAB125;

LAB127:    t7 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t7) = 1;

LAB128:    t14 = (t13 + 4);
    t15 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    *((unsigned int *)t13) = t19;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB130;

LAB129:    t27 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t27 & 1U);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t28 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t13, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB131;
    goto LAB1;

LAB125:    *((unsigned int *)t13) = 1;
    goto LAB128;

LAB130:    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t20 | t21);
    t22 = *((unsigned int *)t14);
    t26 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t22 | t26);
    goto LAB129;

LAB131:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    xsi_vlog_unsigned_add(t6, 33, t4, 33, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 33);
    goto LAB114;

}


extern void work_m_00000000002220291877_1829867111_init()
{
	static char *pe[] = {(void *)Initial_24_0};
	xsi_register_didat("work_m_00000000002220291877_1829867111", "isim/test_module_updn_isim_beh.exe.sim/work/m_00000000002220291877_1829867111.didat");
	xsi_register_executes(pe);
}
