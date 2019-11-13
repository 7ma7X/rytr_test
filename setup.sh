# Setup Compiler
git clone https://github.com/cpuex-19-6/Compiler.git
cd Compiler
git log -1 # 直近のコミットを表示
make min-rt

cd ..

# Setup Assembler
git clone https://github.com/cpuex-19-6/assembler.git
cp Compiler/raytrace.s assembler/rytl.s
cd assembler
git log -1 # 直近のコミットを表示
make
./asm rytl.s rytl.bin

cd ..

# Setup Simulator
git clone https://github.com/cpuex-19-6/simulator
cp contest.sld simulator/contest.sld
cp assembler/rytl.bin simulator/rytl.bin
cd simulator
git log -1 # 直近のコミットを表示
make

cd ..