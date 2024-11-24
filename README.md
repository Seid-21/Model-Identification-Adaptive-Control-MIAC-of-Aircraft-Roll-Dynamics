# Model-Identification-Adaptive-Control-MIAC-of-Aircraft-Roll-Dynamics


---

# Model-Identification Adaptive Control (MIAC) of Aircraft Roll Dynamics

This repository contains the implementation of a **Model-Identification Adaptive Control (MIAC)** system for an aircraft's roll dynamics. The project demonstrates adaptive control techniques to achieve robust tracking performance under varying plant parameters and noise conditions.

---

## Contents

- **[Overview](#overview)**
- **[Objectives](#objectives)**
- **[System Design](#system-design)**
- **[Files and Structure](#files-and-structure)**
- **[Implementation Details](#implementation-details)**
- **[Results](#results)**
- **[Usage](#usage)**
- **[Acknowledgments](#acknowledgments)**

---

## Overview

Aircraft roll control is crucial for maneuverability and stability, yet challenging due to uncertainties in aerodynamic parameters that vary with flight conditions. This project focuses on the design, implementation, and validation of an adaptive control system to manage these challenges effectively.

---

## Objectives

The main objectives of this project are:

1. **Accurate Reference Tracking:** Achieve precise tracking of a time-varying roll rate reference trajectory.
2. **Zero Steady-State Error:** Ensure zero steady-state error without overshoot.
3. **Performance Guarantee:** Attain a prescribed settling time of \( T_s1\% = 3.0 \, s \).
4. **Robustness:** Handle noise and parametric uncertainties effectively.

---

## System Design

### Methodology

1. **Plant Identification**
   - Utilized State Variable Filters (SVF) for linear regression.
   - Online parameter estimation using Recursive Least Squares (RLS).

2. **Controller Design**
   - Adaptive law designed with Certainty Equivalence (CE) principle.
   - Controller structure: 
     \[
     u(t) = w_1 e(t) + w_2 y_r(t) + w_3 \dot{y}_r(t)
     \]
     where \( w_1, w_2, w_3 \) are adaptive gains.

3. **Synthesis**
   - Derived controller parameters as functions of estimated plant parameters.

4. **Implementation**
   - Simulations performed in MATLAB/Simulink environment.

### Key Features

- Adaptive control algorithm adjusts in real-time based on parameter estimates.
- Robust performance under varying noise levels (\( \sigma^2_e \in \{0, 0.01, 0.1\} \)).
- Modular implementation for extensibility.

---

## Files and Structure

### Report

- **SAAS-AC-ReportTask4-JIOKENG-SEID.pdf**
  - Detailed project report including objectives, methodology, and results.

### MATLAB Scripts

- **`Controller.m`**: Implements the adaptive controller.
- **`inpart3.m`**: Contains initialization and parameter settings.
- **`synthesisblock3.m`**: Implements synthesis and key calculations.
- **`lab_report_4.mlx`**: Live script for simulations and visualization.

### Simulink Models

- **`AeroPlantMIAC.mdl`**
- **`AeroPlantMIACpart3.slx`**
- **`AeroPlantMIACpart3_new.mdl`**
  - Simulink models for adaptive control simulations.

---

## Implementation Details

1. **Model Parameters**
   - Plant modeled as a first-order linear system:
     \[
     T_0 \dot{y} + y = k_0 u
     \]
     where \( T_0, k_0 \) are unknown and time-varying.

2. **Adaptive Control**
   - Recursive Least Squares for online identification.
   - Controller gains adjusted dynamically based on estimated parameters.

3. **Simulation Scenarios**
   - Various noise levels (\( \sigma^2_e \)) and inputs (sinusoidal, rectangular).

---

## Results

- **Noise-Free Conditions:** Excellent tracking with all performance objectives met.
- **Low Noise (\( \sigma^2_e = 0.01 \)):** Robust tracking with minimal degradation.
- **High Noise (\( \sigma^2_e = 0.1 \)):** Stable performance with slight degradation.

The system demonstrated superior performance compared to fixed-gain controllers, particularly in scenarios with parameter variations.

---

## Usage

### Requirements

- MATLAB with Simulink
- Required toolboxes: Control System Toolbox, Signal Processing Toolbox

### Steps

1. Open the Simulink model (`AeroPlantMIAC.mdl` or updated versions).
2. Run the script `lab_report_4.mlx` to initialize parameters and run simulations.
3. Analyze the results using plots generated in MATLAB.

---

## Acknowledgments

This project was conducted as part of the **Smart Aerospace and Autonomous Systems** program at **Poznań University of Technology**. Special thanks to **Inz. Safarini Mohammed** for guidance.

---

## Contributors

- **Jean Junior Maldini Jiokeng I Toko**
- **Fikreselassie Eshetu Seid**

---
