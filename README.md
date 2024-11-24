# Model-Identification-Adaptive-Control-MIAC-of-Aircraft-Roll-Dynamics
Designed and implemented a Model-Identification Adaptive Control (MIAC) system for aircraft roll dynamics to track reference roll rate under uncertain and varying parameters. Validated via Matlab-Simulink simulations, ensuring zero steady-state error, fast settling time, and robustness to uncertainties.
Model-Identification Adaptive Control (MIAC) of Aircraft Roll Dynamics
This repository contains the implementation of a Model-Identification Adaptive Control (MIAC) system for an aircraft's roll dynamics. The project demonstrates adaptive control techniques to achieve robust tracking performance under varying plant parameters and noise conditions.

Contents
Overview
Objectives
System Design
Files and Structure
Implementation Details
Results
Usage
Acknowledgments
Overview
Aircraft roll control is crucial for maneuverability and stability, yet challenging due to uncertainties in aerodynamic parameters that vary with flight conditions. This project focuses on the design, implementation, and validation of an adaptive control system to manage these challenges effectively.

Objectives
The main objectives of this project are:

Accurate Reference Tracking: Achieve precise tracking of a time-varying roll rate reference trajectory.
Zero Steady-State Error: Ensure zero steady-state error without overshoot.
Performance Guarantee: Attain a prescribed settling time of 
𝑇
𝑠
1
%
=
3.0
 
𝑠
T 
s
​
 1%=3.0s.
Robustness: Handle noise and parametric uncertainties effectively.
System Design
Methodology
Plant Identification

Utilized State Variable Filters (SVF) for linear regression.
Online parameter estimation using Recursive Least Squares (RLS).
Controller Design

Adaptive law designed with Certainty Equivalence (CE) principle.
Controller structure:
𝑢
(
𝑡
)
=
𝑤
1
𝑒
(
𝑡
)
+
𝑤
2
𝑦
𝑟
(
𝑡
)
+
𝑤
3
𝑦
˙
𝑟
(
𝑡
)
u(t)=w 
1
​
 e(t)+w 
2
​
 y 
r
​
 (t)+w 
3
​
  
y
˙
​
  
r
​
 (t)
where 
𝑤
1
,
𝑤
2
,
𝑤
3
w 
1
​
 ,w 
2
​
 ,w 
3
​
  are adaptive gains.
Synthesis

Derived controller parameters as functions of estimated plant parameters.
Implementation

Simulations performed in MATLAB/Simulink environment.
Key Features
Adaptive control algorithm adjusts in real-time based on parameter estimates.
Robust performance under varying noise levels (
𝜎
𝑒
2
∈
{
0
,
0.01
,
0.1
}
σ 
e
2
​
 ∈{0,0.01,0.1}).
Modular implementation for extensibility.
Files and Structure
Report
SAAS-AC-ReportTask4-JIOKENG-SEID.pdf
Detailed project report including objectives, methodology, and results.
MATLAB Scripts
Controller.m: Implements the adaptive controller.
inpart3.m: Contains initialization and parameter settings.
synthesisblock3.m: Implements synthesis and key calculations.
lab_report_4.mlx: Live script for simulations and visualization.
Simulink Models
AeroPlantMIAC.mdl
AeroPlantMIACpart3.slx
AeroPlantMIACpart3_new.mdl
Simulink models for adaptive control simulations.
Implementation Details
Model Parameters

Plant modeled as a first-order linear system:
𝑇
0
𝑦
˙
+
𝑦
=
𝑘
0
𝑢
T 
0
​
  
y
˙
​
 +y=k 
0
​
 u
where 
𝑇
0
,
𝑘
0
T 
0
​
 ,k 
0
​
  are unknown and time-varying.
Adaptive Control

Recursive Least Squares for online identification.
Controller gains adjusted dynamically based on estimated parameters.
Simulation Scenarios

Various noise levels (
𝜎
𝑒
2
σ 
e
2
​
 ) and inputs (sinusoidal, rectangular).
Results
Noise-Free Conditions: Excellent tracking with all performance objectives met.
Low Noise (
𝜎
𝑒
2
=
0.01
σ 
e
2
​
 =0.01): Robust tracking with minimal degradation.
High Noise (
𝜎
𝑒
2
=
0.1
σ 
e
2
​
 =0.1): Stable performance with slight degradation.
The system demonstrated superior performance compared to fixed-gain controllers, particularly in scenarios with parameter variations.

Usage
Requirements
MATLAB with Simulink
Required toolboxes: Control System Toolbox, Signal Processing Toolbox
Steps
Open the Simulink model (AeroPlantMIAC.mdl or updated versions).
Run the script lab_report_4.mlx to initialize parameters and run simulations.
Analyze the results using plots generated in MATLAB.
Acknowledgments
This project was conducted as part of the Smart Aerospace and Autonomous Systems program at Poznań University of Technology. Special thanks to Inz. Safarini Mohammed for guidance.

Contributors
Jean Junior Maldini Jiokeng I Toko
Fikreselassie Eshetu Seid
