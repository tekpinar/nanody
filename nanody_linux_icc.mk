#This is Makefile for nanody program
CC=icc

CFLAGS= -Wall -pg

#Optimization flags
OPTFLAG=-O3 -funroll-loops #-mtune=generic

#Include files directory
INC_DIR=./include

#Source files directory
SRC_DIR=./src

#Library files directory
LIB_DIR=./lib

#Library files directory
BIN_DIR=./bin

OBJ=nanody.o

# nanody.exe: ${LIB_DIR}/${OBJ}
# 	${CC} ${CFLAGS} ${OBJ} -lm -framework Accelerate -o nanody.exe

# nanody.o: ${SRC_DIR}/nanody.c
# 	${CC}  ${CFLAGS} -c ${SRC_DIR}/nanody.c -o ${LIB_DIR}/nanody.o

MKLROOT=/opt/intel/mkl

nanody.exe: ${SRC_DIR}/nanody.c
	icc ${SRC_DIR}/nanody.c -O3 -axCORE-AVX2,AVX,SSE4.2 -o ${BIN_DIR}/nanody.exe -L ${MKLROOT}/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -lpthread -Wl,-rpath=$GSL_LIBDIR -Wl,-rpath=${MKLROOT}/lib -fopenmp

clean:
	rm -rf ${LIB_DIR}/nanody.o nanody.exe
