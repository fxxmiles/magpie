*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$ifthen "%c41_initial_irrigation_area%" == "Siebert" pc41_AEI_start(j) = f41_irrig(j);
$elseif "%c41_initial_irrigation_area%" == "LUH2v2"  pc41_AEI_start(j) = f41_irrig_luh("y1995",j);
$endif

*Area equipped for irrigation in exogenous scenarios for water availability (mio. m^3 per yr)
vm_exo_aei(t,j) = sum(j, (f41_irrig_luh(t_ini41,j)*ic42_wat_req_k(j,kcr)));
