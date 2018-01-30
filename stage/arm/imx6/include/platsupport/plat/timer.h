/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */
#ifndef _PLATSUPPORT_PLAT_TIMER_H
#define _PLATSUPPORT_PLAT_TIMER_H

/* Default ipg_clk configuration:
 *
 * FIN (24 MHZ)
 *  |_ *22 PLL2 (528)
 *           |_ /4 AHB_CLK (132 MHZ)
 *                     |_ /2 IPG_CLK (66 MHZ)
 *                              |_ EPIT
 */
#define PLL2_FREQ  (528u)
#define AHB_FREQ   (PLL2_FREQ / 4u)
#define IPG_FREQ   (AHB_FREQ  / 2u)

#include <platsupport/mach/gpt.h>
#include <platsupport/mach/epit.h>

#endif /* _PLATSUPPORT_PLAT_TIMER_H */
