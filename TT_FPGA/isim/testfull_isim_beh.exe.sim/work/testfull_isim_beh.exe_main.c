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
    work_m_16128659836425256877_2515890048_init();
    work_m_12889139149461932240_1430122060_init();
    work_m_06539565023102475853_1940053798_init();
    work_m_00254703936148363129_3375387218_init();
    work_m_09259257799459317201_1655625025_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_09259257799459317201_1655625025");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
