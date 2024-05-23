*** |  (C) 2006-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/50_damages/DiceLike/datainput.gms

p50_damageFuncCoef1(regi) = 0;
p50_damageFuncCoef2(regi) = 0;
p50_damageFuncCoef3(regi) = 2;

* http://www.econ.yale.edu/~nordhaus/homepage/DICE2013R_110513_vanilla.gms
$ifi %cm_damage_DiceLike_specification% == "DICE2013R" p50_damageFuncCoef2(regi) = 0.00267;

* doi:10.1073/pnas.1609244114
$ifi %cm_damage_DiceLike_specification% == "DICE2016" p50_damageFuncCoef2(regi) = 0.00236;

* Howard et al (2017), 10.1007/s10640-017-0166-z
$ifi %cm_damage_DiceLike_specification% == "HowardNonCatastrophic" p50_damageFuncCoef2(regi) = 0.00744;
$ifi %cm_damage_DiceLike_specification% == "HowardInclCatastrophic" p50_damageFuncCoef2(regi) = 0.0100;

* Kalkuhl & Wenz (2020)
$ifi %cm_damage_DiceLike_specification% == "KWcross" p50_damageFuncCoef1(regi) = 0.023;
$ifi %cm_damage_DiceLike_specification% == "KWpanelPop" p50_damageFuncCoef1(regi) = 0.0373;
$ifi %cm_damage_DiceLike_specification% == "KWpanelPop" p50_damageFuncCoef2(regi) = 0.0009;

* FAIR - De Cian et al. (2016)
$IFTHEN.RICE %cm_damage_DiceLike_specification% == "FAIR"
p50_damageFuncCoef1("LAM") = 0.0;
p50_damageFuncCoef1("IND") = 0.0;
p50_damageFuncCoef1("USA") = -0.0012;
p50_damageFuncCoef1("CHA") = -0.0029;
p50_damageFuncCoef1("JPN") = -0.0019;
p50_damageFuncCoef1("OAS") = 0.0;
p50_damageFuncCoef1("EUR") = 0.0;
p50_damageFuncCoef1("NEU") = 0.0;
p50_damageFuncCoef1("CAZ") = 0.0;
p50_damageFuncCoef1("MEA") = 0.0;
p50_damageFuncCoef1("REF") = 0.0;
p50_damageFuncCoef1("SSA") = 0.0;

p50_damageFuncCoef2("LAM") = 0.0047;
p50_damageFuncCoef2("IND") = 0.013;
p50_damageFuncCoef2("USA") = 0.0005;
p50_damageFuncCoef2("CHA") = 0.0013;
p50_damageFuncCoef2("JPN") = 0.0005;
p50_damageFuncCoef2("OAS") = 0.0089;
p50_damageFuncCoef2("EUR") = 0.0047;
p50_damageFuncCoef2("NEU") = 0.0047;
p50_damageFuncCoef2("CAZ") = 0.0047;
p50_damageFuncCoef2("MEA") = 0.00525;
p50_damageFuncCoef2("REF") = 0.0047;
p50_damageFuncCoef2("SSA") = 0.0198;

p50_damageFuncCoef3("LAM") = 1.9026;
p50_damageFuncCoef3("IND") = 1.7239;
p50_damageFuncCoef3("USA") = 3.3431;
p50_damageFuncCoef3("CHA") = 2.3708;
p50_damageFuncCoef3("JPN") = 3.5354;
p50_damageFuncCoef3("OAS") = 1.8704;
p50_damageFuncCoef3("EUR") = 1.9026;
p50_damageFuncCoef3("NEU") = 1.9026;
p50_damageFuncCoef3("CAZ") = 1.9026;
p50_damageFuncCoef3("MEA") = 1.9269;
p50_damageFuncCoef3("REF") = 1.9026;
p50_damageFuncCoef3("SSA") = 1.233;
$ENDIF.RICE

*initialize
pm_damage(tall,regi) = 1;
pm_damageMarginal(tall,regi)           = 0;

*** EOF ./modules/50_damages/DiceLike/datainput.gms
