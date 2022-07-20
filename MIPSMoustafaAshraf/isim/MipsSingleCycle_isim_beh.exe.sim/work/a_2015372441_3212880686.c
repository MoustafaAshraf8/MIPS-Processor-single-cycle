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
static const char *ng0 = "D:/Mina/temp/Mostafa Ashraf/Moustafa Ashraf MIPS project/MIPSMoustafaAshraf/ALUcontrole.vhd";



static void work_a_2015372441_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4864);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4870);
    t4 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:
LAB3:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4876);
    t15 = 1;
    if (2U == 2U)
        goto LAB25;

LAB26:    t15 = 0;

LAB27:    if (t15 == 1)
        goto LAB22;

LAB23:    t4 = (unsigned char)0;

LAB24:    if (t4 != 0)
        goto LAB19;

LAB21:
LAB20:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t27 = (1 - 1);
    t5 = (t27 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t15 = *((unsigned char *)t1);
    t19 = (t15 == (unsigned char)3);
    if (t19 == 1)
        goto LAB40;

LAB41:    t4 = (unsigned char)0;

LAB42:    if (t4 != 0)
        goto LAB37;

LAB39:
LAB38:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t27 = (1 - 1);
    t5 = (t27 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t15 = *((unsigned char *)t1);
    t19 = (t15 == (unsigned char)3);
    if (t19 == 1)
        goto LAB52;

LAB53:    t4 = (unsigned char)0;

LAB54:    if (t4 != 0)
        goto LAB49;

LAB51:
LAB50:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4902);
    t15 = 1;
    if (2U == 2U)
        goto LAB67;

LAB68:    t15 = 0;

LAB69:    if (t15 == 1)
        goto LAB64;

LAB65:    t4 = (unsigned char)0;

LAB66:    if (t4 != 0)
        goto LAB61;

LAB63:
LAB62:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4912);
    t15 = 1;
    if (2U == 2U)
        goto LAB85;

LAB86:    t15 = 0;

LAB87:    if (t15 == 1)
        goto LAB82;

LAB83:    t4 = (unsigned char)0;

LAB84:    if (t4 != 0)
        goto LAB79;

LAB81:
LAB80:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(18, ng0);
    t8 = (t0 + 4866);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(21, ng0);
    t8 = (t0 + 4872);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(26, ng0);
    t14 = (t0 + 4882);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB20;

LAB22:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4878);
    t19 = 1;
    if (4U == 4U)
        goto LAB31;

LAB32:    t19 = 0;

LAB33:    t4 = t19;
    goto LAB24;

LAB25:    t5 = 0;

LAB28:    if (t5 < 2U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB26;

LAB30:    t5 = (t5 + 1);
    goto LAB28;

LAB31:    t20 = 0;

LAB34:    if (t20 < 4U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB32;

LAB36:    t20 = (t20 + 1);
    goto LAB34;

LAB37:    xsi_set_current_line(30, ng0);
    t11 = (t0 + 4890);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB38;

LAB40:    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t18 = (5 - 3);
    t20 = (t18 * 1U);
    t28 = (0 + t20);
    t3 = (t6 + t28);
    t7 = (t0 + 4886);
    t29 = 1;
    if (4U == 4U)
        goto LAB43;

LAB44:    t29 = 0;

LAB45:    t4 = t29;
    goto LAB42;

LAB43:    t30 = 0;

LAB46:    if (t30 < 4U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t9 = (t3 + t30);
    t10 = (t7 + t30);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB44;

LAB48:    t30 = (t30 + 1);
    goto LAB46;

LAB49:    xsi_set_current_line(34, ng0);
    t11 = (t0 + 4898);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB50;

LAB52:    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t18 = (5 - 3);
    t20 = (t18 * 1U);
    t28 = (0 + t20);
    t3 = (t6 + t28);
    t7 = (t0 + 4894);
    t29 = 1;
    if (4U == 4U)
        goto LAB55;

LAB56:    t29 = 0;

LAB57:    t4 = t29;
    goto LAB54;

LAB55:    t30 = 0;

LAB58:    if (t30 < 4U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t9 = (t3 + t30);
    t10 = (t7 + t30);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB56;

LAB60:    t30 = (t30 + 1);
    goto LAB58;

LAB61:    xsi_set_current_line(38, ng0);
    t14 = (t0 + 4908);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB62;

LAB64:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4904);
    t19 = 1;
    if (4U == 4U)
        goto LAB73;

LAB74:    t19 = 0;

LAB75:    t4 = t19;
    goto LAB66;

LAB67:    t5 = 0;

LAB70:    if (t5 < 2U)
        goto LAB71;
    else
        goto LAB69;

LAB71:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB68;

LAB72:    t5 = (t5 + 1);
    goto LAB70;

LAB73:    t20 = 0;

LAB76:    if (t20 < 4U)
        goto LAB77;
    else
        goto LAB75;

LAB77:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB74;

LAB78:    t20 = (t20 + 1);
    goto LAB76;

LAB79:    xsi_set_current_line(42, ng0);
    t14 = (t0 + 4918);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB80;

LAB82:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4914);
    t19 = 1;
    if (4U == 4U)
        goto LAB91;

LAB92:    t19 = 0;

LAB93:    t4 = t19;
    goto LAB84;

LAB85:    t5 = 0;

LAB88:    if (t5 < 2U)
        goto LAB89;
    else
        goto LAB87;

LAB89:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB86;

LAB90:    t5 = (t5 + 1);
    goto LAB88;

LAB91:    t20 = 0;

LAB94:    if (t20 < 4U)
        goto LAB95;
    else
        goto LAB93;

LAB95:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB92;

LAB96:    t20 = (t20 + 1);
    goto LAB94;

}


extern void work_a_2015372441_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2015372441_3212880686_p_0};
	xsi_register_didat("work_a_2015372441_3212880686", "isim/MipsSingleCycle_isim_beh.exe.sim/work/a_2015372441_3212880686.didat");
	xsi_register_executes(pe);
}
