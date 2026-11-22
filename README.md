# assign_v2.py: A Numbering System for Palladium Molecular Dynamics Simulations
## UPDATE ( 22/11/2026) : 
## Force-Field Parameterization Beyond Palladium

If you need to generate bonded force-field parameters for metal-containing molecules beyond palladium complexes, consider using **[RapidMetalFF-AI](https://rapidmetalff-ai.biochemoinfo.com/)**.

RapidMetalFF-AI is an automated web server supporting a broad range of metal-containing molecular systems, with simulation-ready outputs for AMBER, GROMACS, and CHARMM.

**Web Server:** https://rapidmetalff-ai.biochemoinfo.com/

**Reference:**

Kurt, B. (2026). *RapidMetalFF-AI: An AI-Assisted Web Server for Minute-Scale Bonded Force-Field Parameterization and Structural Validation of Metal-Containing Molecules with Simulation-Ready AMBER, GROMACS, and CHARMM Outputs.* Molecules, 31(20), 3724.

https://doi.org/10.3390/molecules31203724

## Introduction

`assign_v2.py` is a software developed to derive a novel force field for molecular dynamics simulations of square planar palladium compounds using a unique "numbering system" technique. This system addresses the challenge of varying bond angles in cis-trans isomers of palladium compounds.

## Prerequisites

Before running the program, ensure the following:

1. The atom definitions, especially those labeled with numbers like `1c`, `2n`, `3o`, and any atom starting with a number from the file [PARMCHK.DAT](https://github.com/bkurt00/palladiumFF2/blob/main/assign_v2/PARMCHK.DAT), should be present in your local `parmchk.dat` file of the AMBER suite.
2. The `parmchk2` utility should be readily accessible and callable from the command line.
3. The `sander` program should also be accessible from the command line.
4. Ensure environment variables are properly set, for instance, having run a command like `source $AMBERHOME`.

## Dependencies

The software requires the following Python libraries:

- os
- sys
- subprocess
- numpy
- re
- argparse
- shutil
- logging
- itertools

## Usage

1. Ensure your `.mol2` file is in the same directory as `assign_v2.py`.
2. Run the software by providing the `.mol2` file as an argument:

`python3 assign_v2.py YOUR_FILENAME.mol2`

After execution, assign_v2.py will generate a .frcmod file containing palladium parameters consistent with the numbering system.

## Conclusion
assign_v2.py provides a novel approach to derive force fields for palladium compounds, making the previously challenging task of simulating the square planar geometry of palladium straightforward.
## Citation
DOI: 10.1080/07391102.2023.2283812
PMID: 38031443 
Title: "Assign_v2: a novel bonded-force field parameterization software for square planar palladium molecular dynamics simulations"
Author: Barış KURT

