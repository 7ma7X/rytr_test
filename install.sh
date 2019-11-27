# Setup Compiler
git clone https://github.com/cpuex-19-6/Compiler.git
cd Compiler
make min-rt128
make min-rt

cd ..

# Setup Assembler
git clone https://github.com/cpuex-19-6/assembler.git
cp Compiler/raytrace128.s assembler/rytl128.s
cp Compiler/raytrace.s assembler/rytl.s
cd assembler
make
./asm rytl128.s rytl128.bin
./asm rytl.s rytl.bin

cd ..

# Setup Simulator
git clone https://github.com/cpuex-19-6/simulator
cp -r sld/ simulator/sld 
cp setup simulator/setup
cp assembler/rytl128.bin simulator/rytl128.bin
cp assembler/rytl.bin simulator/rytl.bin
cd simulator
make

cd ..
