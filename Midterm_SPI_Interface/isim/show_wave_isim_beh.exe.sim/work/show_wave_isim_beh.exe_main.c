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
    work_m_11436303383138244023_2187063399_init();
    work_m_12118855219302856130_3417347778_init();
    work_m_16467832844081192940_3189026011_init();
    work_m_16448136504872325527_4106359651_init();
    work_m_16329050218366252148_3361984503_init();
    work_m_09229596487718868868_1296880646_init();
    work_m_01214962902662310121_1280956863_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_01214962902662310121_1280956863");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
