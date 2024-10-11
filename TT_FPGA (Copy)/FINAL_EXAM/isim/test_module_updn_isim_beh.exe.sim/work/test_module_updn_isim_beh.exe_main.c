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
<<<<<<< HEAD
    work_m_02629443165232179172_3053041525_init();
    work_m_18175669195022726949_1829867111_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_18175669195022726949_1829867111");
    xsi_register_tops("work_m_16541823861846354283_2073120511");
=======
    work_m_00000000002629707748_3053041525_init();
    work_m_00000000002220291877_1829867111_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002220291877_1829867111");
    xsi_register_tops("work_m_00000000004134447467_2073120511");
>>>>>>> 5d5427b5e3d7d0ff635a19a952f7d5c8c188b2e9


    return xsi_run_simulation(argc, argv);

}
