# nanody
A software for multi-precision normal mode calculation of large protein assemblies

This program calculates normal modes (and many related quantities) of large
protein assemblies with elastic network models.

To compile the program on a standard Unix system:

make

You should have lapack and blas installed.

To compile it with icc and using MKL:
make -f nanody_linux_icc.mk

After a successful compilation,

./nanody -h

will give you a help menu.

An example run is as follows:

./nanody.exe -i 4cg4-chainA.pdb -m 0 -o 4cg4-chainA-normal-modes.nmd

The '4cg4-chainA-normal-modes.nmd' is the text output file for normal modes.
It can be viewed with Network Wizard of VMD (Visual Molecular Dynamics) program.
