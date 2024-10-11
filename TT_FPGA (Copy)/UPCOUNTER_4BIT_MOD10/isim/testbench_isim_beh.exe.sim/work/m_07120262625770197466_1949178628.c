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
static const char *ng0 = "/mnt/sda2/DOC/NH_2024_2025_HK_01/ICSL316764/TT_FPGA/UPCOUNTER_4BIT_MOD10/testbench.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {19, 0};



static void Initial_15_0(char *t0)
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

LAB2:    xsi_set_current_line(15, ng0);

LAB4:    xsi_set_current_line(16, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(18, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(19, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(20, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(21, ng0);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB7:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB9;

LAB8:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB9;

LAB12:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB10;

LAB11:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(22, ng0);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB30:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB32;

LAB31:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB32;

LAB35:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB33;

LAB34:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(24, ng0);
    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB53:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB55;

LAB54:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB55;

LAB58:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB56;

LAB57:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB59;

LAB60:    xsi_set_current_line(25, ng0);
    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB76:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB78;

LAB77:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB78;

LAB81:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB79;

LAB80:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB82;

LAB83:    goto LAB1;

LAB9:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB11;

LAB10:    *((unsigned int *)t6) = 1;
    goto LAB11;

LAB13:    xsi_set_current_line(21, ng0);

LAB15:    xsi_set_current_line(21, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(21, ng0);
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
        goto LAB20;

LAB18:    if (*((unsigned int *)t21) == 0)
        goto LAB17;

LAB19:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB20:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB22;

LAB21:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    *((unsigned int *)t17) = 1;
    goto LAB20;

LAB22:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB21;

LAB23:    xsi_set_current_line(21, ng0);
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
        goto LAB27;

LAB25:    if (*((unsigned int *)t7) == 0)
        goto LAB24;

LAB26:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB27:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB29;

LAB28:    t31 = *((unsigned int *)t6);
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
    goto LAB7;

LAB24:    *((unsigned int *)t6) = 1;
    goto LAB27;

LAB29:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB28;

LAB32:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB34;

LAB33:    *((unsigned int *)t6) = 1;
    goto LAB34;

LAB36:    xsi_set_current_line(22, ng0);

LAB38:    xsi_set_current_line(22, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB39:    xsi_set_current_line(22, ng0);
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
        goto LAB43;

LAB41:    if (*((unsigned int *)t21) == 0)
        goto LAB40;

LAB42:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB43:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB45;

LAB44:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB40:    *((unsigned int *)t17) = 1;
    goto LAB43;

LAB45:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB44;

LAB46:    xsi_set_current_line(22, ng0);
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
        goto LAB50;

LAB48:    if (*((unsigned int *)t7) == 0)
        goto LAB47;

LAB49:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB50:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB52;

LAB51:    t31 = *((unsigned int *)t6);
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
    goto LAB30;

LAB47:    *((unsigned int *)t6) = 1;
    goto LAB50;

LAB52:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB51;

LAB55:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB57;

LAB56:    *((unsigned int *)t6) = 1;
    goto LAB57;

LAB59:    xsi_set_current_line(24, ng0);

LAB61:    xsi_set_current_line(24, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB62:    xsi_set_current_line(24, ng0);
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
        goto LAB66;

LAB64:    if (*((unsigned int *)t21) == 0)
        goto LAB63;

LAB65:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB66:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB68;

LAB67:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB69;
    goto LAB1;

LAB63:    *((unsigned int *)t17) = 1;
    goto LAB66;

LAB68:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB67;

LAB69:    xsi_set_current_line(24, ng0);
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
        goto LAB73;

LAB71:    if (*((unsigned int *)t7) == 0)
        goto LAB70;

LAB72:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB73:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB75;

LAB74:    t31 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t31 & 1U);
    t32 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t32 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t6, 0, 0, 1);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB53;

LAB70:    *((unsigned int *)t6) = 1;
    goto LAB73;

LAB75:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB74;

LAB78:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB80;

LAB79:    *((unsigned int *)t6) = 1;
    goto LAB80;

LAB82:    xsi_set_current_line(25, ng0);

LAB84:    xsi_set_current_line(25, ng0);
    t16 = (t0 + 2488);
    xsi_process_wait(t16, 5000LL);
    *((char **)t1) = &&LAB85;
    goto LAB1;

LAB85:    xsi_set_current_line(25, ng0);
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
        goto LAB89;

LAB87:    if (*((unsigned int *)t21) == 0)
        goto LAB86;

LAB88:    t27 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t27) = 1;

LAB89:    t28 = (t17 + 4);
    t29 = (t20 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    *((unsigned int *)t17) = t31;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB91;

LAB90:    t36 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t36 & 1U);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & 1U);
    t38 = (t0 + 1448);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 1);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2488);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB92;
    goto LAB1;

LAB86:    *((unsigned int *)t17) = 1;
    goto LAB89;

LAB91:    t32 = *((unsigned int *)t17);
    t33 = *((unsigned int *)t29);
    *((unsigned int *)t17) = (t32 | t33);
    t34 = *((unsigned int *)t28);
    t35 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t34 | t35);
    goto LAB90;

LAB92:    xsi_set_current_line(25, ng0);
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
        goto LAB96;

LAB94:    if (*((unsigned int *)t7) == 0)
        goto LAB93;

LAB95:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB96:    t9 = (t6 + 4);
    t10 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = (~(t22));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB98;

LAB97:    t31 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t31 & 1U);
    t32 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t32 & 1U);
    t16 = (t0 + 1448);
    xsi_vlogvar_assign_value(t16, t6, 0, 0, 1);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB76;

LAB93:    *((unsigned int *)t6) = 1;
    goto LAB96;

LAB98:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t10);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t26 | t30);
    goto LAB97;

}


extern void work_m_07120262625770197466_1949178628_init()
{
	static char *pe[] = {(void *)Initial_15_0};
	xsi_register_didat("work_m_07120262625770197466_1949178628", "isim/testbench_isim_beh.exe.sim/work/m_07120262625770197466_1949178628.didat");
	xsi_register_executes(pe);
}
