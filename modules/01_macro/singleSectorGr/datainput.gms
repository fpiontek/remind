*** |  (C) 2006-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/01_macro/singleSectorGr/datainput.gms

*** depreciation rate of capital
pm_delta_kap(regi,"kap") = 0.05;

*AL* initialize parameter (avoid compilation errors)
p01_ppfen_ratios(t,regi,in,in2) = 0; 
pm_ppfen_shares(t,regi,in,in2) = 0; 
*** load data for macro investments in 2005, used as bound
parameter p01_boundInvMacro(all_regi)        "macro investments in 2005" 
/
$ondelim
$include "./modules/01_macro/singleSectorGr/input/p01_boundInvMacro.cs4r"
$offdelim
/
;
p01_boundInvMacro(all_regi) = p01_boundInvMacro(all_regi) * pm_shPPPMER(all_regi);


p01_adapt1(regi) = 0;
p01_adapt2(regi) = 0;
vm_qAdapt.l(tall,regi) = 0;
pm_qAdapt(tall,regi) = 0;

$IFTHEN.ADAPT %cm_adaptation% == "on"
p01_adapt1("LAM") = 0.0527;
p01_adapt1("IND") = 0.2233;
p01_adapt1("USA") = 0.0377;
p01_adapt1("CHA") = 0.5591;
p01_adapt1("JPN") = 0.0092;
p01_adapt1("OAS") = 0.0422;
p01_adapt1("EUR") = 0.0544;
p01_adapt1("NEU") = 0.0544;
p01_adapt1("CAZ") = 0.0544;
p01_adapt1("MEA") = 0.03865;
p01_adapt1("REF") = 0.0527;
p01_adapt1("SSA") = 0.2897;

p01_adapt2("LAM") = 2.3524;
p01_adapt2("IND") = 3.1357;
p01_adapt2("USA") = 6.8446;
p01_adapt2("CHA") = 9.691;
p01_adapt2("JPN") = 3.1683;
p01_adapt2("OAS") = 2.4951;
p01_adapt2("EUR") = 4.4843;
p01_adapt2("NEU") = 4.4843;
p01_adapt2("CAZ") = 4.4843;
p01_adapt2("MEA") = 2.53975;
p01_adapt2("REF") = 2.3524;
p01_adapt2("SSA") = 3.7589;
$ENDIF.ADAPT

*** EOF ./modules/01_macro/singleSectorGr/datainput.gms
