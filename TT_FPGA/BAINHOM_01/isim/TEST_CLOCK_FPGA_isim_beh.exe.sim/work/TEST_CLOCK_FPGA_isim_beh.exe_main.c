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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_12863405249424870843_0411545929_init();
    work_m_04920378325591938458_4075264010_init();
    work_m_10199236385599365163_0813027550_init();
    work_m_05321028538446910853_3065555231_init();
    work_m_14085136481075152080_3708569471_init();
    work_m_00618214724354416316_1823162620_init();
    work_m_15155353942836000442_2391087179_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15155353942836000442_2391087179");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
