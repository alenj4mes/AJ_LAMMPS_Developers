#! /bin/bash

rm -rf build-alen
mkdir build-alen

cd build-alen

module load gcc/10.2.0 mkl/2020.4.304 openmpi/4.0.5-gcc10.2.0

cmake -DPKG_EXTRA-DUMP=yes -DPKG_ALEN=yes -DBUILD_MPI=yes -DBUILD_OMP=yes -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DFFT=MKL -DCMAKE_CXX_FLAGS_RELEASE="-Ofast -axCORE-AVX512 -qopenmp -DNDEBUG" ../cmake

make -j4
#make install
