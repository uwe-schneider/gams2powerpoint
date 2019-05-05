* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *
*   Multiple Runs of Plot Producing Files for Powerpoint Display         *
*                                                                        *
*                         Uwe A. Schneider                               *
*                        September 23, 2008                              *
*                                                                        *
* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *


* Run the following four lines in sequence starting with 1 and ending with 4
$setglobal gp_ppt_4    1
*$setglobal gp_ppt_4    2
*$setglobal gp_ppt_4    3
*$setglobal gp_ppt_4    4


SETS
Scenario     Scenarios     /Workers,Children,"Senior Citizens"/
Observation  Observations  /1*30/
Item         Items         /Level,Time/
Region       Regions       /Island,Greenland/

PARAMETER
Randomnumber(Scenario)
Taxation(Scenario,Observation,Item)
Unemployment(Scenario,Observation,Item)
Wellbeing(Scenario,Observation,Item)
;

$setglobal gp_ppt yes
$setglobal gp_ppt_fontname "Times New Roman"
$setglobal gp_ppt_fontsize 25
$setglobal gp_ppt_boldfont yes

$setglobal gp_ppt_1_name  " for Strong Environmental Policy"
$setglobal gp_ppt_2_name  " for High Population Growth"
$setglobal gp_ppt_3_name  " for Sudden Animal Invasion"
$setglobal gp_ppt_4_name  " for Mars People Landing"

Randomnumber(Scenario) = abs(100*(sqrt(gsecond(jnow)+ord(scenario))-Round(sqrt(gsecond(jnow)+ord(scenario)),0)));
Taxation(scenario,Observation,"Level") = 100 + normal(0,randomnumber(Scenario));
Taxation(scenario,Observation,"Time")      = ord(Observation);
$setglobal gp_title "Taxation"
$libinclude gnuplotxyz taxation Time Level

Randomnumber(Scenario) = abs(100*(sqrt(gsecond(jnow)+ord(scenario))-Round(sqrt(gsecond(jnow)+ord(scenario)),0)));
Unemployment(scenario,Observation,"Level") = 100 + normal(0,randomnumber(Scenario));
Unemployment(scenario,Observation,"Time")  = ord(Observation);
$setglobal gp_title "Unemployment"
$libinclude gnuplotxyz Unemployment Time Level

$setglobal gp_title "Well being"
$setglobal gp_loop1 Region

LOOP(Region,
Randomnumber(Scenario) = abs(100*(sqrt(gsecond(jnow)+ord(scenario))-Round(sqrt(gsecond(jnow)+ord(scenario)),0)));
Wellbeing(scenario,Observation,"Level") = 100 + normal(0,randomnumber(Scenario));
Wellbeing(scenario,Observation,"Time")     = ord(Observation);
$libinclude gnuplotxyz Wellbeing Time Level
    );
