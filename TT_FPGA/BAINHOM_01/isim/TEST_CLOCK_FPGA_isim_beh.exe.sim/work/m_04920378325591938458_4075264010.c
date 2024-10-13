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
static const char *ng0 = "/mnt/sda2/DOC/NH_2024_2025_HK_01/ICSL316764/TT_FPGA/BAINHOM_01/SECOND_CONTROL.v";
static unsigned int ng1[] = {48U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {9, 0};
static int ng4[] = {3, 0};
static int ng5[] = {5, 0};
static int ng6[] = {7, 0};
static int ng7[] = {4, 0};
static int ng8[] = {1, 0};



static void Initial_10_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(10, ng0);

LAB2:    xsi_set_current_line(11, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);
    xsi_set_current_line(12, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Cont_16_1(char *t0)
{
    char t4[8];
    char t22[8];
    char t57[8];
    char t88[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;

LAB0:    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;

LAB7:    t12 = (t4 + 4);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    *((unsigned int *)t4) = t15;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB9;

LAB8:    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 1U);
    t21 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t21 & 1U);
    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t4);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t26 = (t3 + 4);
    t27 = (t4 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB10;

LAB11:
LAB12:    t54 = (t0 + 1208U);
    t55 = *((char **)t54);
    t54 = (t0 + 1368U);
    t56 = *((char **)t54);
    t58 = *((unsigned int *)t55);
    t59 = *((unsigned int *)t56);
    t60 = (t58 & t59);
    *((unsigned int *)t57) = t60;
    t54 = (t55 + 4);
    t61 = (t56 + 4);
    t62 = (t57 + 4);
    t63 = *((unsigned int *)t54);
    t64 = *((unsigned int *)t61);
    t65 = (t63 | t64);
    *((unsigned int *)t62) = t65;
    t66 = *((unsigned int *)t62);
    t67 = (t66 != 0);
    if (t67 == 1)
        goto LAB13;

LAB14:
LAB15:    t89 = *((unsigned int *)t22);
    t90 = *((unsigned int *)t57);
    t91 = (t89 | t90);
    *((unsigned int *)t88) = t91;
    t92 = (t22 + 4);
    t93 = (t57 + 4);
    t94 = (t88 + 4);
    t95 = *((unsigned int *)t92);
    t96 = *((unsigned int *)t93);
    t97 = (t95 | t96);
    *((unsigned int *)t94) = t97;
    t98 = *((unsigned int *)t94);
    t99 = (t98 != 0);
    if (t99 == 1)
        goto LAB16;

LAB17:
LAB18:    t116 = (t0 + 3912);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    memset(t120, 0, 8);
    t121 = 1U;
    t122 = t121;
    t123 = (t88 + 4);
    t124 = *((unsigned int *)t88);
    t121 = (t121 & t124);
    t125 = *((unsigned int *)t123);
    t122 = (t122 & t125);
    t126 = (t120 + 4);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t127 | t121);
    t128 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t128 | t122);
    xsi_driver_vfirst_trans(t116, 0, 0);
    t129 = (t0 + 3816);
    *((int *)t129) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB9:    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t13);
    *((unsigned int *)t4) = (t16 | t17);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t18 | t19);
    goto LAB8;

LAB10:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    t36 = (t3 + 4);
    t37 = (t4 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t36);
    t41 = (~(t40));
    t42 = *((unsigned int *)t4);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = (t39 & t41);
    t47 = (t43 & t45);
    t48 = (~(t46));
    t49 = (~(t47));
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t51 & t49);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    t53 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t53 & t49);
    goto LAB12;

LAB13:    t68 = *((unsigned int *)t57);
    t69 = *((unsigned int *)t62);
    *((unsigned int *)t57) = (t68 | t69);
    t70 = (t55 + 4);
    t71 = (t56 + 4);
    t72 = *((unsigned int *)t55);
    t73 = (~(t72));
    t74 = *((unsigned int *)t70);
    t75 = (~(t74));
    t76 = *((unsigned int *)t56);
    t77 = (~(t76));
    t78 = *((unsigned int *)t71);
    t79 = (~(t78));
    t80 = (t73 & t75);
    t81 = (t77 & t79);
    t82 = (~(t80));
    t83 = (~(t81));
    t84 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t84 & t82);
    t85 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t85 & t83);
    t86 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t86 & t82);
    t87 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t87 & t83);
    goto LAB15;

LAB16:    t100 = *((unsigned int *)t88);
    t101 = *((unsigned int *)t94);
    *((unsigned int *)t88) = (t100 | t101);
    t102 = (t22 + 4);
    t103 = (t57 + 4);
    t104 = *((unsigned int *)t102);
    t105 = (~(t104));
    t106 = *((unsigned int *)t22);
    t107 = (t106 & t105);
    t108 = *((unsigned int *)t103);
    t109 = (~(t108));
    t110 = *((unsigned int *)t57);
    t111 = (t110 & t109);
    t112 = (~(t107));
    t113 = (~(t111));
    t114 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t114 & t112);
    t115 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t115 & t113);
    goto LAB18;

}

static void Always_18_2(char *t0)
{
    char t6[8];
    char t15[8];
    char t39[8];
    char t40[8];
    char t41[8];
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
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    int t49;
    char *t50;
    unsigned int t51;
    int t52;
    int t53;
    char *t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;

LAB0:    t1 = (t0 + 3496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 3832);
    *((int *)t2) = 1;
    t3 = (t0 + 3528);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(18, ng0);

LAB5:    xsi_set_current_line(20, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = ((char*)((ng3)));
    memset(t15, 0, 8);
    t16 = (t6 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB9;

LAB6:    if (t27 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t15) = 1;

LAB9:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(36, ng0);

LAB46:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = ((char*)((ng8)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t6, 32, t14, 32);
    t16 = (t0 + 2088);
    t17 = (t0 + 2088);
    t30 = (t17 + 72U);
    t31 = *((char **)t30);
    t37 = ((char*)((ng4)));
    t38 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t31)), 2, t37, 32, 1, t38, 32, 1);
    t42 = (t39 + 4);
    t18 = *((unsigned int *)t42);
    t49 = (!(t18));
    t43 = (t40 + 4);
    t19 = *((unsigned int *)t43);
    t52 = (!(t19));
    t53 = (t49 && t52);
    t44 = (t41 + 4);
    t20 = *((unsigned int *)t44);
    t56 = (!(t20));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB47;

LAB48:
LAB12:    goto LAB2;

LAB8:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(22, ng0);

LAB13:    xsi_set_current_line(24, ng0);
    t37 = ((char*)((ng2)));
    t38 = (t0 + 2088);
    t42 = (t0 + 2088);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng4)));
    t46 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t44)), 2, t45, 32, 1, t46, 32, 1);
    t47 = (t39 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t40 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t54 = (t41 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 4);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 4);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = ((char*)((ng5)));
    memset(t15, 0, 8);
    t16 = (t6 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB19;

LAB16:    if (t27 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t15) = 1;

LAB19:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(31, ng0);

LAB43:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 4);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 4);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = ((char*)((ng8)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t6, 32, t14, 32);
    t16 = (t0 + 2088);
    t17 = (t0 + 2088);
    t30 = (t17 + 72U);
    t31 = *((char **)t30);
    t37 = ((char*)((ng6)));
    t38 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t31)), 2, t37, 32, 1, t38, 32, 1);
    t42 = (t39 + 4);
    t18 = *((unsigned int *)t42);
    t49 = (!(t18));
    t43 = (t40 + 4);
    t19 = *((unsigned int *)t43);
    t52 = (!(t19));
    t53 = (t49 && t52);
    t44 = (t41 + 4);
    t20 = *((unsigned int *)t44);
    t56 = (!(t20));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB44;

LAB45:
LAB22:    goto LAB12;

LAB14:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t38, t37, t59, *((unsigned int *)t40), t63);
    goto LAB15;

LAB18:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(25, ng0);

LAB23:    xsi_set_current_line(27, ng0);
    t37 = ((char*)((ng2)));
    t38 = (t0 + 2088);
    t42 = (t0 + 2088);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng6)));
    t46 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t44)), 2, t45, 32, 1, t46, 32, 1);
    t47 = (t39 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t40 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t54 = (t41 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t39, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t18 = (t10 | t13);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB29;

LAB26:    if (t21 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t39) = 1;

LAB29:    memset(t15, 0, 8);
    t14 = (t39 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t39);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t14) != 0)
        goto LAB32;

LAB33:    t17 = (t15 + 4);
    t29 = *((unsigned int *)t15);
    t32 = *((unsigned int *)t17);
    t33 = (t29 || t32);
    if (t33 > 0)
        goto LAB34;

LAB35:    t34 = *((unsigned int *)t15);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t48 = (t35 || t36);
    if (t48 > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t17) > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t15) > 0)
        goto LAB40;

LAB41:    memcpy(t6, t31, 8);

LAB42:    t37 = (t0 + 1928);
    xsi_vlogvar_assign_value(t37, t6, 0, 0, 1);
    goto LAB22;

LAB24:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t38, t37, t59, *((unsigned int *)t40), t63);
    goto LAB25;

LAB28:    t7 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB29;

LAB30:    *((unsigned int *)t15) = 1;
    goto LAB33;

LAB32:    t16 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB33;

LAB34:    t30 = ((char*)((ng2)));
    goto LAB35;

LAB36:    t31 = ((char*)((ng8)));
    goto LAB37;

LAB38:    xsi_vlog_unsigned_bit_combine(t6, 32, t30, 32, t31, 32);
    goto LAB42;

LAB40:    memcpy(t6, t30, 8);
    goto LAB42;

LAB44:    t21 = *((unsigned int *)t41);
    t59 = (t21 + 0);
    t22 = *((unsigned int *)t39);
    t23 = *((unsigned int *)t40);
    t62 = (t22 - t23);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t16, t15, t59, *((unsigned int *)t40), t63);
    goto LAB45;

LAB47:    t21 = *((unsigned int *)t41);
    t59 = (t21 + 0);
    t22 = *((unsigned int *)t39);
    t23 = *((unsigned int *)t40);
    t62 = (t22 - t23);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t16, t15, t59, *((unsigned int *)t40), t63);
    goto LAB48;

}


extern void work_m_04920378325591938458_4075264010_init()
{
	static char *pe[] = {(void *)Initial_10_0,(void *)Cont_16_1,(void *)Always_18_2};
	xsi_register_didat("work_m_04920378325591938458_4075264010", "isim/TEST_CLOCK_FPGA_isim_beh.exe.sim/work/m_04920378325591938458_4075264010.didat");
	xsi_register_executes(pe);
}
