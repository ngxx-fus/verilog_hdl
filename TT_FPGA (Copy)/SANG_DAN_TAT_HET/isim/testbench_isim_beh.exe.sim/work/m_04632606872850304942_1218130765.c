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
static const char *ng0 = "/mnt/sda2/DOC/NH_2024_2025_HK_01/ICSL316764/TT_FPGA/SANG_DAN_TAT_HET/SANG_DAN_TAT_HET.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {255U, 0U};
static int ng3[] = {1, 0};



static void Always_8_0(char *t0)
{
    char t13[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 2840);
    *((int *)t2) = 1;
    t3 = (t0 + 2552);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(8, ng0);

LAB5:    xsi_set_current_line(9, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB12;

LAB9:    if (t18 != 0)
        goto LAB11;

LAB10:    *((unsigned int *)t13) = 1;

LAB12:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 32, t4, 8, t5, 32);
    t11 = ((char*)((ng3)));
    t6 = *((unsigned int *)t13);
    t7 = *((unsigned int *)t11);
    t8 = (t6 | t7);
    *((unsigned int *)t30) = t8;
    t12 = (t13 + 4);
    t21 = (t11 + 4);
    t22 = (t30 + 4);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t21);
    t14 = (t9 | t10);
    *((unsigned int *)t22) = t14;
    t15 = *((unsigned int *)t22);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB16;

LAB17:
LAB18:    t36 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t36, t30, 0, 0, 8, 0LL);

LAB15:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(10, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    goto LAB8;

LAB11:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(13, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 8, 0LL);
    goto LAB15;

LAB16:    t17 = *((unsigned int *)t30);
    t18 = *((unsigned int *)t22);
    *((unsigned int *)t30) = (t17 | t18);
    t28 = (t13 + 4);
    t29 = (t11 + 4);
    t19 = *((unsigned int *)t28);
    t20 = (~(t19));
    t23 = *((unsigned int *)t13);
    t31 = (t23 & t20);
    t24 = *((unsigned int *)t29);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t32 = (t26 & t25);
    t27 = (~(t31));
    t33 = (~(t32));
    t34 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t34 & t27);
    t35 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t35 & t33);
    goto LAB18;

}


extern void work_m_04632606872850304942_1218130765_init()
{
	static char *pe[] = {(void *)Always_8_0};
	xsi_register_didat("work_m_04632606872850304942_1218130765", "isim/testbench_isim_beh.exe.sim/work/m_04632606872850304942_1218130765.didat");
	xsi_register_executes(pe);
}
