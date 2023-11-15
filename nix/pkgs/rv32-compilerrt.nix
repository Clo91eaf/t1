{ stdenv, llvmPackages, cmake, python3, glibc_multi  }:

stdenv.mkDerivation rec {
  pname = "rv-compilerrt";
  version = llvmPackages.llvm.version;

  src = llvmPackages.llvm.monorepoSrc;
  sourceRoot = "${src.name}/compiler-rt";
  nativeBuildInputs = [ cmake python3 glibc_multi ];
  cmakeFlags = [
    "-DCOMPILER_RT_BUILD_LIBFUZZER=OFF"
    "-DCOMPILER_RT_BUILD_SANITIZERS=OFF"
    "-DCOMPILER_RT_BUILD_PROFILE=OFF"
    "-DCOMPILER_RT_BUILD_MEMPROF=OFF"
    "-DCOMPILER_RT_BUILD_ORC=OFF"
    "-DCOMPILER_RT_BUILD_BUILTINS=ON"
    "-DCOMPILER_RT_BAREMETAL_BUILD=ON"
    "-DCOMPILER_RT_INCLUDE_TESTS=OFF"
    "-DCOMPILER_RT_HAS_FPIC_FLAG=OFF"
    "-DCOMPILER_RT_DEFAULT_TARGET_ONLY=On"
    "-DCOMPILER_RT_OS_DIR=riscv32"
    "-DCMAKE_BUILD_TYPE=Release"
    "-DCMAKE_SYSTEM_NAME=Generic"
    "-DCMAKE_SYSTEM_PROCESSOR=riscv32"
    "-DCMAKE_TRY_COMPILE_TARGET_TYPE=STATIC_LIBRARY"
    "-DCMAKE_SIZEOF_VOID_P=8"
    "-DCMAKE_ASM_COMPILER_TARGET=riscv32-none-elf"
    "-DCMAKE_C_COMPILER_TARGET=riscv32-none-elf"
    "-DCMAKE_C_COMPILER_WORKS=ON"
    "-DCMAKE_CXX_COMPILER_WORKS=ON"
    "-Wno-dev"
  ];
  env.CMAKE_C_FLAGS = "-nodefaultlibs -fno-exceptions -mno-relax -Wno-macro-redefined -fPIC";
}