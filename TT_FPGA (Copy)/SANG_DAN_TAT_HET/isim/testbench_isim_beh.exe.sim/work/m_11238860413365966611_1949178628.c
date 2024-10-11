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
static const char *ng0 = "/mnt/sda2/DOC/NH_2024_2025_HK_01/ICSL316764/TT_FPGA/SANG_DAN_TAT_HET/testbench.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {15, 0};



static void Initial_14_0(char *t0)
{
    char t6[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(14, ng0);

LAB4:    xsi_set_current_line(15, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(16, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(17, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(18, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(19, ng0);
    xsi_set_current_line(19, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB8;

LAB7:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB8;

LAB11:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB9;

LAB10:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(20, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(21, ng0);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB29:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB31;

LAB30:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB31;

LAB34:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB32;

LAB33:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(22, ng0);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB52:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB54;

LAB53:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB54;

LAB57:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB55;

LAB56:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB58;

LAB59:    goto LAB1;

LAB8:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB10;

LAB9:    *((unsigned int *)t6) = 1;
    goto LAB10;

LAB12:    xsi_set_current_line(19, ng0);

LAB14:    xsi_set_current_line(19, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(19, ng0);
    t18 = (t0 + 1448);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t17, 0, 8);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t21) == 0)
        goto LAB16;

LAB18:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB19:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB21;

LAB20:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB16:    *((unsigned int *)t17) = 1;
    goto LAB19;

LAB21:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB20;

LAB22:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t7) == 0)
        goto LAB23;

LAB25:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB26:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB28;

LAB27:    t31 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t31 & 1U);
    t32 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t32 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t6, 0, 0, 1);
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB23:    *((unsigned int *)t6) = 1;
    goto LAB26;

LAB28:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB27;

LAB31:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;
    goto LAB33;

LAB35:    xsi_set_current_line(21, ng0);

LAB37:    xsi_set_current_line(21, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB38:    xsi_set_current_line(21, ng0);
    t18 = (t0 + 1448);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t17, 0, 8);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB42;

LAB40:    if (*((unsigned int *)t21) == 0)
        goto LAB39;

LAB41:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB42:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB44;

LAB43:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB39:    *((unsigned int *)t17) = 1;
    goto LAB42;

LAB44:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB43;

LAB45:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t7) == 0)
        goto LAB46;

LAB48:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB49:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB51;

LAB50:    t31 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t31 & 1U);
    t32 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t32 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t6, 0, 0, 1);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB29;

LAB46:    *((unsigned int *)t6) = 1;
    goto LAB49;

LAB51:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB50;

LAB54:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB56;

LAB55:    *((unsigned int *)t6) = 1;
    goto LAB56;

LAB58:    xsi_set_current_line(22, ng0);

LAB60:    xsi_set_current_line(22, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB61:    xsi_set_current_line(22, ng0);
    t18 = (t0 + 1448);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t17, 0, 8);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB65;

LAB63:    if (*((unsigned int *)t21) == 0)
        goto LAB62;

LAB64:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB65:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB67;

LAB66:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB62:    *((unsigned int *)t17) = 1;
    goto LAB65;

LAB67:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB66;

LAB68:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB72;

LAB70:    if (*((unsigned int *)t7) == 0)
        goto LAB69;

LAB71:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB72:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB74;

LAB73:    t31 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t31 & 1U);
    t32 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t32 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t6, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB52;

LAB69:    *((unsigned int *)t6) = 1;
    goto LAB72;

LAB74:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB73;

}


extern void work_m_11238860413365966611_1949178628_init()
{
	static char *pe[] = {(void *)Initial_14_0};
	xsi_register_didat("work_m_11238860413365966611_1949178628", "isim/testbench_isim_beh.exe.sim/work/m_11238860413365966611_1949178628.didat");
	xsi_register_executes(pe);
}
