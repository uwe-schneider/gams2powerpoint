$setglobal sm_ppt yes
$setglobal gp_ppt yes


SET
WorldCountries_sm  Set of WorldCountries Region Names Needed for ShadeMap (SM)
  /"Albania","Andorra","Bosnia and Herzegovina","Bulgaria","Byelarus","Croatia","Gibraltar","Iceland","Liechtenstein","Macedonia","Moldova","Monaco","Montenegro","Norway","Russia"
   "San Marino","Serbia","Switzerland","Ukraine","Austria","Belgium","Bulgaria2","Cyprus","Czech Republic","Denmark","Estonia","Finland","France","Germany","Greece"
   "Hungary","Ireland","Italy","Latvia","Lithuania","Luxembourg","Malta","Netherlands","Poland","Portugal","Romania","Slovakia","Slovenia","Spain","Sweden"
   "United Kingdom","Bermuda","Canada","Greenland","St. Pierre and Miquelon","United States","Armenia","Azerbaijan","Bangladesh","Bhutan","Brunei","Cambodia","China","Georgia","India"
   "Indonesia","Japan","Kazakhstan","Kyrgyzstan","Laos","Malaysia","Maldives","Mongolia","Myanmar (Burma)","Nepal","North Korea","Pakistan","Philippines","Singapore","South Korea"
   "Sri Lanka","Taiwan","Tajikistan","Thailand","Turkmenistan","Uzbekistan","Vietnam","Afghanistan","Algeria","Bahrain","Cyprus2","Egypt","Iran","Iraq","Israel"
   "Jordan","Kuwait","Lebanon","Libya","Morocco","Oman","Qatar","Saudi Arabia","Syria","Tunisia","Turkey","United Arab Emirates","Western Sahara","Yemen","Argentina"
   "Bolivia","Brazil","Chile","Colombia","Ecuador","Falkland Islands","French Guiana","Guyana","Paraguay","Peru","Suriname","Uruguay","Venezuela","American Samoa","Australia"
   "Christmas Island","Cocos (Keeling) Islands","Cook Islands","Federated States of Micronesia","Fiji","French Polynesia","Guam","Kiribati","Marshall Islands","Nauru","New Caledonia","New Zealand","Niue","Norfolk Island","Northern Mariana Islands"
   "Pacific Islands (Palau)","Papua New Guinea","Solomon Islands","Tokelau","Tonga","Tuvalu","Vanuatu","Wallis and Futuna","Western Samoa","Anguilla","Antigua and Barbuda","Aruba","Bahamas","Barbados","Belize"
   "British Virgin Islands","Cayman Islands","Costa Rica","Cuba","Dominica","Dominican Republic","El Salvador","Grenada","Guadeloupe","Guatemala","Haiti","Honduras","Jamaica","Martinique","Mexico"
   "Montserrat","Netherlands Antilles","Nicaragua","Panama","Puerto Rico","St. Kitts and Nevis","St. Lucia","St. Vincent and the Grenadines","Trinidad and Tobago","Turks and Caicos Islands","Virgin Islands","Angola","Benin","Botswana","Burkina Faso"
   "Burundi","Cameroon","Cape Verde","Central African Republic","Chad","Comoros","Congo","Djibouti","Equatorial Guinea","Eritrea","Ethiopia","Gabon","Gambia","Ghana","Guinea"
   "Guinea-Bissau","Ivory Coast","Kenya","Lesotho","Liberia","Madagascar","Malawi","Mali","Mauritania","Mauritius","Mozambique","Namibia","Niger","Nigeria","Reunion"
   "Rwanda","Sao Tome and Principe","Senegal","Seychelles","Sierra Leone","Somalia","South Africa","St. Helena","Sudan","Swaziland","Tanzania","Togo","Uganda","Western Samoa2","Zaire"
   "Zambia","Zimbabwe"/
Line
 /Line1*Line7/
Observation
 /Obs1*Obs10/
Countries
 /USA,Germany,Poland,Australia,Canada/
section
 /"Emission","Employment"/
AxisItem
 /x,val2,val3,val5,val4,val6,value/
Manyruns /"Global Crisis","Technical Progress","Population Growth","Exchange Rate"/
;

Parameter v(WorldCountries_sm) Shade Values for the Map of WorldCountries;
v(WorldCountries_sm) = normal(100,10);

Table histfigure(Countries,section,AxisItem)
                           Value
USA."Emission"               8
USA."Employment"             9
Germany."Emission"           4
Germany."Employment"         6
Poland."Emission"            3
Poland."Employment"          4
Australia."Emission"         9
Australia."Employment"       7
Canada."Emission"            4
Canada."Employment"          6
;

Table mixeddata(Line,Observation,AxisItem)
                      x        val2        val3        val5        val4        val6

Line1.Obs1         1.00       13.69        0.50        6.49        1.42       18.73
Line1.Obs2         2.00       18.33        1.82       12.01        2.31       26.64
Line1.Obs3         3.00       22.46        2.81       21.31        3.49       28.48
Line1.Obs4         4.00       24.17        3.61       14.46        4.01       24.99
Line1.Obs5         5.00       29.27        4.80       22.20        5.09       35.05
Line1.Obs6         6.00       33.03        5.54       23.17        6.04       38.96
Line1.Obs7         7.00       37.61        6.94       29.06        7.27       44.44
Line1.Obs8         8.00       42.93        7.63       36.72        8.06       44.52
Line1.Obs9         9.00       45.24        8.97       38.23        9.37       48.56
Line1.Obs10       10.00       50.00        9.71       42.99       10.06       53.16
Line2.Obs1         1.00       23.09        0.97       15.18        1.24       28.29
Line2.Obs2         2.00       28.34        2.00       22.24        2.40       31.98
Line2.Obs3         3.00       31.34        2.80       30.79        3.25       33.02
Line2.Obs4         4.00       35.51        3.74       30.66        4.27       42.34
Line2.Obs5         5.00       41.88        4.69       41.36        5.01       46.94
Line2.Obs6         6.00       43.28        5.89       36.29        6.27       49.04
Line2.Obs7         7.00       46.70        6.80       44.75        7.23       53.90
Line2.Obs8         8.00       50.62        7.86       48.36        8.49       57.46
Line2.Obs9         9.00       56.32        8.92       48.18        9.09       56.52
Line2.Obs10       10.00       61.19        9.53       51.27       10.08       69.58
Line3.Obs1         1.00       32.85        0.79       25.34        1.01       39.95
Line3.Obs2         2.00       38.71        1.93       31.53        2.09       40.27
Line3.Obs3         3.00       43.02        2.81       43.01        3.03       49.12
Line3.Obs4         4.00       45.28        3.81       42.64        4.01       51.89
Line3.Obs5         5.00       49.00        4.87       40.76        5.42       50.94
Line3.Obs6         6.00       54.01        5.53       45.81        6.30       57.64
Line3.Obs7         7.00       57.01        6.91       48.40        7.01       63.24
Line3.Obs8         8.00       61.09        7.85       58.97        8.10       68.41
Line3.Obs9         9.00       66.66        8.96       62.09        9.48       70.80
Line3.Obs10       10.00       71.57        9.80       71.19       10.17       73.15
Line4.Obs1         1.00       46.21        0.95       42.98        1.30       46.34
Line4.Obs2         2.00       47.38        1.81       42.98        2.13       47.48
Line4.Obs3         3.00       51.78        2.84       48.63        3.32       61.30
Line4.Obs4         4.00       55.04        3.90       53.69        4.08       64.80
Line4.Obs5         5.00       59.89        4.94       51.78        5.23       69.56
Line4.Obs6         6.00       63.74        5.70       59.57        6.20       72.30
Line4.Obs7         7.00       67.47        6.74       66.06        7.40       68.89
Line4.Obs8         8.00       70.96        7.98       66.31        8.27       71.46
Line4.Obs9         9.00       77.98        8.61       75.15        9.20       83.51
Line4.Obs10       10.00       80.83        9.53       71.87       10.28       82.67
Line5.Obs1         1.00       55.00        0.70       54.36        1.47       64.95
Line5.Obs2         2.00       57.25        1.70       53.10        2.17       65.34
Line5.Obs3         3.00       62.76        2.82       59.34        3.00       65.82
Line5.Obs4         4.00       67.20        3.70       62.52        4.47       68.07
Line5.Obs5         5.00       70.84        4.66       64.42        5.29       75.15
Line5.Obs6         6.00       72.57        5.75       66.13        6.17       76.07
Line5.Obs7         7.00       80.10        6.92       76.72        7.49       81.27
Line5.Obs8         8.00       82.67        7.67       81.67        8.38       88.53
Line5.Obs9         9.00       86.17        8.74       77.11        9.06       90.62
Line5.Obs10       10.00       91.65        9.94       89.48       10.50       95.77
Line6.Obs1         1.00       71.27        0.51       56.08        1.29       74.41
Line6.Obs2         2.00       75.81        1.89       65.29        2.08       71.94
Line6.Obs3         3.00       76.75        2.66       69.85        3.32       72.99
Line6.Obs4         4.00       80.41        3.61       70.66        4.17       79.83
Line6.Obs5         5.00       85.19        4.53       75.04        5.46       85.50
Line6.Obs6         6.00       89.20        5.90       79.16        6.45       86.47
Line6.Obs7         7.00       93.46        6.85       86.34        7.01       88.94
Line6.Obs8         8.00       99.28        7.90       85.77        8.18      102.57
Line6.Obs9         9.00      101.62        8.88       87.58        9.33       98.13
Line6.Obs10       10.00      105.29        9.68       99.05       10.30       99.91
Line7.Obs1         2.50       97.50       92.50      102.50      112.50       77.17
Line7.Obs2         3.00       99.00       94.00      104.00      114.00       78.28
Line7.Obs3         3.50      100.50       95.50      105.50      115.50       88.45
Line7.Obs4         4.00      102.00       97.00      107.00      117.00       88.31
Line7.Obs5         5.00      105.00      100.00      110.00      120.00       93.78
Line7.Obs6         6.00      108.00      103.00      113.00      123.00       96.73
Line7.Obs7         7.00      111.00      106.00      116.00      126.00      101.32
Line7.Obs8         8.00      114.00      109.00      119.00      129.00      107.94
Line7.Obs9         9.00      117.00      112.00      122.00      132.00      111.88
Line7.Obs10       10.00      120.00      115.00      125.00      135.00      111.46
;



$setglobal gp_title  "Default histogram: clustered gap 2"
$setglobal gp_ylabel "Change (in percent)"
$setglobal gp_xlabel "0"
$setglobal gp_yrange "0:12"
$setglobal gp_style histogram
$libinclude gnuplotxyz histfigure value

$setglobal gp_title  "Rowstacked histogram"
$setglobal gp_yrange "0:35"
$setglobal gp_hist "rowstacked"
*$setglobal gp_fill 'pattern'
*$setglobal gp_boxwid "0.8 relative"
$setglobal gp_xtics "nomirror"
$libinclude gnuplotxyz histfigure value

$setglobal gp_title  "Columnstacked histogram"
$setglobal gp_yrange "0:22"
$setglobal gp_hist "columnstacked"
*$setglobal gp_fill 'solid 1'
*$setglobal gp_fill 'pattern'
$setglobal gp_color 'no'
$libinclude gnuplotxyz histfigure value


$libinclude shademap WorldCountries loop
$setglobal sm_LegendPos "10 70"
$setglobal sm_FontSize 13
$setglobal sm_DesiredWidth 920
$setglobal sm_yytrans 190
$setglobal sm_LegendPos "1 70"
$setglobal sm_loop1 manyruns

LOOP(manyruns,
v(WorldCountries_sm) = uniform(1,100);
$libinclude shademap WorldCountries v
    );


$setglobal gp_hist no
$setglobal gp_yrange no
$setglobal gp_color yes
$setglobal gp_boxwid "0.14"
$setglobal gp_fill 'solid 0.5'
$setglobal gp_title "boxes (1), points (2), xyerrorbars (3), lines (4), xyerrorlines (5), steps (6), candlesticks (7)"
$setglobal gp_style lines
$setglobal gp_l1style boxes
$setglobal gp_l2style points
$setglobal gp_l3style xyerrorbars
$setglobal gp_l5style xyerrorlines
$setglobal gp_l6style steps
$setglobal gp_l7style candlesticks
$setglobal gp_xlabel "0"
$setglobal gp_ylabel "Simulated Value"
$libinclude gnuplotxyz mixeddata x val2 val3 val4 val5 val6
