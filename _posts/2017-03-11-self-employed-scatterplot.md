---
layout: post
title: "A super quick weighted scatterplot about self-employment in R and ggplot2"
---

# The two self-employed worlds

### The 'privileged' and the 'precarious'

<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' viewBox='0 0 720.00 576.00'>
<defs>
  <style type='text/css'>
    line, polyline, path, rect, circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
  </style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg='>
    <rect x='66.89' y='5.98' width='550.95' height='524.33' />
  </clipPath>
</defs>
<polyline points='66.89,468.28 617.84,468.28 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='66.89,231.01 617.84,231.01 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='67.29,530.31 67.29,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='158.56,530.31 158.56,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='249.82,530.31 249.82,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='341.09,530.31 341.09,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='432.35,530.31 432.35,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='523.62,530.31 523.62,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='614.88,530.31 614.88,5.98 ' style='stroke-width: 1.07; stroke: #FAFAFA; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='66.89,349.65 617.84,349.65 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='66.89,112.38 617.84,112.38 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='112.92,530.31 112.92,5.98 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='204.19,530.31 204.19,5.98 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='295.46,530.31 295.46,5.98 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='386.72,530.31 386.72,5.98 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='477.99,530.31 477.99,5.98 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<polyline points='569.25,530.31 569.25,5.98 ' style='stroke-width: 0.43; stroke: #E5E5E5; stroke-linecap: butt;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='200.85' cy='367.49' r='9.06pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='229.42' cy='357.27' r='12.75pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='225.23' cy='487.08' r='16.36pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='152.95' cy='399.31' r='6.51pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='269.26' cy='243.43' r='6.30pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='161.80' cy='211.31' r='11.07pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='161.11' cy='381.41' r='10.58pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='187.83' cy='336.27' r='7.32pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='327.58' cy='74.01' r='7.73pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='296.88' cy='110.39' r='6.08pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='348.99' cy='160.72' r='5.99pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='592.79' cy='46.55' r='8.43pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='433.18' cy='69.24' r='7.75pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='281.08' cy='84.93' r='7.45pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='210.83' cy='111.71' r='8.95pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='132.23' cy='368.30' r='10.92pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='469.08' cy='56.31' r='5.28pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='141.54' cy='82.98' r='11.58pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='465.01' cy='36.66' r='9.38pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='131.61' cy='180.67' r='7.45pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='187.98' cy='64.05' r='8.01pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='91.93' cy='169.94' r='6.30pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<circle cx='124.07' cy='354.48' r='10.36pt' style='stroke-width: 0.71; fill: #7F7F7F;' clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)' />
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='250' y='510.41' style='font-size: 11.04px; font-family: Arial;' textLength='124.14px' lengthAdjust='spacingAndGlyphs'>Construction and building</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='106.71' y='106.34' style='font-size: 11.04px; font-family: Arial;' textLength='48.93px' lengthAdjust='spacingAndGlyphs'>Education</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='390.82' y='38.03' style='font-size: 11.04px; font-family: Arial;' textLength='64.81px' lengthAdjust='spacingAndGlyphs'>Health sector</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='81.75' y='334.19' style='font-size: 11.04px; font-family: Arial;' textLength='62.35px' lengthAdjust='spacingAndGlyphs'>Hairdressers</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='87.72' y='158.84' style='font-size: 11.04px; font-family: Arial;' textLength='105.17px' lengthAdjust='spacingAndGlyphs'>Sports and recreation</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='203.54' y='58.73' style='font-size: 11.04px; font-family: Arial;' textLength='19.56px' lengthAdjust='spacingAndGlyphs'>Arts</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='358.90' y='177.36' style='font-size: 11.04px; font-family: Arial;' textLength='55.64px' lengthAdjust='spacingAndGlyphs'>Real estate</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='118.04' y='409.81' style='font-size: 11.04px; font-family: Arial;' textLength='26.28px' lengthAdjust='spacingAndGlyphs'>Taxis</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='291.57' y='61.19' style='font-size: 11.04px; font-family: Arial;' textLength='99.04px' lengthAdjust='spacingAndGlyphs'>IT and programming</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='443.44' y='79.50' style='font-size: 11.04px; font-family: Arial;' textLength='69.09px' lengthAdjust='spacingAndGlyphs'>Consultancies</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='171.88' y='241.94' style='font-size: 11.04px; font-family: Arial;' textLength='28.12px' lengthAdjust='spacingAndGlyphs'>Retail</text></g>
<g clip-path='url(#cpNjYuODl8NjE3LjgzN3w1MzAuMzA4fDUuOTc3NTg=)'><text x='498.71' y='33.75' style='font-size: 11.04px; font-family: Arial;' textLength='104.59px' lengthAdjust='spacingAndGlyphs'>Legal and accounting</text></g>
<defs>
  <clipPath id='cpMHw3MjB8NTc2fDA='>
    <rect x='0.00' y='0.00' width='720.00' height='576.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='21.74' y='353.23' style='font-size: 9.60px; font-family: Arial;' textLength='28.35px' lengthAdjust='spacingAndGlyphs'>12.5%</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='21.74' y='115.96' style='font-size: 9.60px; font-family: Arial;' textLength='28.35px' lengthAdjust='spacingAndGlyphs'>50.0%</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='99.02' y='554.26' style='font-size: 9.60px; font-family: Arial;' textLength='27.81px' lengthAdjust='spacingAndGlyphs'>10000</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='190.29' y='554.26' style='font-size: 9.60px; font-family: Arial;' textLength='27.81px' lengthAdjust='spacingAndGlyphs'>20000</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='281.55' y='554.26' style='font-size: 9.60px; font-family: Arial;' textLength='27.81px' lengthAdjust='spacingAndGlyphs'>30000</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='372.82' y='554.26' style='font-size: 9.60px; font-family: Arial;' textLength='27.81px' lengthAdjust='spacingAndGlyphs'>40000</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='464.08' y='554.26' style='font-size: 9.60px; font-family: Arial;' textLength='27.81px' lengthAdjust='spacingAndGlyphs'>50000</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='555.35' y='554.26' style='font-size: 9.60px; font-family: Arial;' textLength='27.81px' lengthAdjust='spacingAndGlyphs'>60000</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='297.35' y='567.63' style='font-size: 12.00px; font-family: Arial;' textLength='90.04px' lengthAdjust='spacingAndGlyphs'>Mean income (£)</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text transform='translate(16.96,328.85) rotate(-90)' style='font-size: 12.00px; font-family: Arial;' textLength='121.42px' lengthAdjust='spacingAndGlyphs'>Percentage of degrees</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='630.59' y='172.32' style='font-size: 12.00px; font-family: Arial;' textLength='48.69px' lengthAdjust='spacingAndGlyphs'>Category</text></g>
<circle cx='639.23' cy='185.28' r='1.95pt' style='stroke-width: 0.71; fill: #F8766D;' clip-path='url(#cpMHw3MjB8NTc2fDA=)' />
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='650.03' y='188.86' style='font-size: 9.60px; font-family: Arial;' textLength='43.91px' lengthAdjust='spacingAndGlyphs'>Privileged</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='630.59' y='216.69' style='font-size: 12.00px; font-family: Arial;' textLength='42.68px' lengthAdjust='spacingAndGlyphs'>Number</text></g>
<circle cx='650.81' cy='230.05' r='7.16pt' style='stroke-width: 0.71;' clip-path='url(#cpMHw3MjB8NTc2fDA=)' />
<circle cx='650.81' cy='251.87' r='9.98pt' style='stroke-width: 0.71;' clip-path='url(#cpMHw3MjB8NTc2fDA=)' />
<circle cx='650.81' cy='280.31' r='12.14pt' style='stroke-width: 0.71;' clip-path='url(#cpMHw3MjB8NTc2fDA=)' />
<circle cx='650.81' cy='314.05' r='13.97pt' style='stroke-width: 0.71;' clip-path='url(#cpMHw3MjB8NTc2fDA=)' />
<circle cx='650.81' cy='352.35' r='15.57pt' style='stroke-width: 0.71;' clip-path='url(#cpMHw3MjB8NTc2fDA=)' />
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='673.18' y='233.63' style='font-size: 9.60px; font-family: Arial;' textLength='28.09px' lengthAdjust='spacingAndGlyphs'>1e+05</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='673.18' y='255.45' style='font-size: 9.60px; font-family: Arial;' textLength='28.09px' lengthAdjust='spacingAndGlyphs'>2e+05</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='673.18' y='283.89' style='font-size: 9.60px; font-family: Arial;' textLength='28.09px' lengthAdjust='spacingAndGlyphs'>3e+05</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='673.18' y='317.63' style='font-size: 9.60px; font-family: Arial;' textLength='28.09px' lengthAdjust='spacingAndGlyphs'>4e+05</text></g>
<g clip-path='url(#cpMHw3MjB8NTc2fDA=)'><text x='673.18' y='355.92' style='font-size: 9.60px; font-family: Arial;' textLength='28.09px' lengthAdjust='spacingAndGlyphs'>5e+05</text></g>
</svg>


```r
library(ggplot2)
library(readr)
library(ggthemes)

# Load new batch of annotated data
df <- read_csv("https://raw.githubusercontent.com/basilesimon/interactive-journalism-module/master/week5/exercise/data_annotated.csv")

# Color now depends on assigned category
colors <- ggplot(df, aes(x = Mean, y = Degrees, size = Number, fill = Category)) +
  geom_point(shape = 21) +
  scale_size_area(max_size = 15) +
  scale_x_continuous(breaks = seq(0, 70000, 10000), name = "Mean income (£)") +
  scale_y_continuous(labels = scales::percent, name = "Percentage of degrees")

# More annotations
labels <- colors +
  annotate("text", x = 29000, y = .05, label = "Construction and building") +
  annotate("text", x = 12000, y = .56, label = "Education") +
  annotate("text", x = 46000, y = .75, label = "Health sector") +
  annotate("text", x = 10000, y = .16, label = "Hairdressers") +
  annotate("text", x = 12000, y = .39, label = "Sports and recreation") +
  annotate("text", x = 20000, y = 0.7, label = "Arts") +
  annotate("text", x = 40000, y = .35, label = "Real estate") +
  annotate("text", x = 14000, y = .07, label = "Taxis") +
  annotate("text", x = 35000, y = .66, label = "IT and programming") +
  annotate("text", x = 50000, y = .62, label = "Consultancies") +
  annotate("text", x = 18000, y = .24, label = "Retail") +
  annotate("text", x = 58000, y = .77, label = "Legal and accounting")

# Playing with some themes
# And display plot
labels + theme_minimal()
```

Data courtesy of Resolution Foundation, Feb. 2017 - [*A tough gig? The nature of self-employment in 21st Century Britain and policy implications*](http://www.resolutionfoundation.org/app/uploads/2017/02/Self-employment-presentation.pdf), by Dan Tomlinson and Adam Corlett
