[ [Back to index](../README.md) ]

## Overview

The Collective Knowledge project is motivated by our [tedious experience](https://learning.acm.org/techtalks/reproducibility) 
reproducing research papers on machine learning and systems and validating them in the real world.

We have developed the [Collective Knowledge concept (CK)](https://arxiv.org/pdf/2011.01149.pdf) 
to provide a simple way to unify, manage, connect and reuse any artifacts, scripts, tools and workflows 
on any platform with any software and hardware stack. 

CK is intended to help researchers and developers turn their scripts, artifacts and workflow
into a database of portable, reusable, customizable and deterministic components
with minimal effort and no changes to their projects.

All such components have a simple, human-friendly and platform-independent CLI, Python API,
JSON or YAML meta description, tags, and Unique ID automatically generated by CK.

This approach allows users to automatically plug any ad-hoc scripts and artifacts 
from the community into their projects, build systems, CI/CD tools,
containers, Jupyter/Colab notebooks and any other technology.

CK runtime system also helps users interconnect any scripts and artifacts 
into portable workflows, applications and web-services.
They can run natively or inside containers while automatically 
adapting to any given software and hardware.

Any output of CK components and workflows (CSV/XLS/JSON/YAML files,
pre-processed data set, notes and optimized code) can be also stored 
as CK components with all related CM dependencies.
Such database-like organization of projects makes it easier
for the community to re-run, reproduce and reuse research results.

We have donated CK to the [MLCommons foundation](https://mlcommons.org) 
to benefit everyone after it was successfully validated by Qualcomm, Arm, General Motors,
OctoML, Krai, HPE, Dell, Lenovo and other organizations.

The MLCommons has establshed an open [open taskforce on automation and reproducibility](taskforce.md)
to develop the 2nd generation of the CK framework (aka Collective Mind or CM).

Here is the list of reusable CM components developed and shared by this taskforce:
* [CM automations](list_of_automations.md)
* [CM cross-platform scripts](list_of_scripts.md)

The community uses CM to modularize ML and AI systems and automate their benchmarking, 
optimization and deployment across diverse and continuously changing software, hardware and data
from the cloud to embedded devices.

Feel free to join this [open taskforce](docs/mlperf-education-workgroup.md) 
to provide your feedback and participate in further community developments!

&copy; 2021-2022 [MLCommons](https://mlcommons.org)<br>

## Legacy MLCommons CK framework (CK1)

The MLCommons CK (the 1st generation) was discontinued in summer 2022 after the stable release of the 2nd generation of this framework (Collective Mind aka CM or CK2).
You can access this project [here](../ck1).

## Resources

* [MLOps resources](misc/MLOps.md)
* [ML resources](misc/ML.md)