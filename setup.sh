# Setup Compiler
git clone https://github.com/cpuex-19-6/Compiler.git
cd Compiler
make min-rt

cd ..

# Setup Assembler
git clone https://github.com/cpuex-19-6/assembler.git
cp Compiler/raytrace.s assembler/rytl.s
cd assembler
make
./asm rytl.s rytl.bin

cd ..

# Setup Simulator
git clone https://github.com/cpuex-19-6/simulator
cp base.sld simulator/base.sld
cp contest.sld simulator/contest.sld
cp setup simulator/setup
cp assembler/rytl.bin simulator/rytl.bin
cd simulator
make

cd ..