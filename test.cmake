#################################################################
#  add crosscompiling Configuration
#################################################################
# this one is important
SET(CMAKE_SYSTEM_NAME Linux)

# specify the cross compiler
SET(CMAKE_C_COMPILER   arm-openwrt-linux-gcc)
SET(CMAKE_CXX_COMPILER arm-openwrt-linux-g++)

set(CMAKE_CXX_FLAGS, "-Os -pipe -march=armv7-a -mtune=cortex-a7 -mfpu=neon -fno-caller-saves -fno-plt -mfloat-abi=hard  -Wformat -Werror=format-security -fstack-protector -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro -Wno-virtual-dtor -std=c++11 -D__ANDROID__")
# where is the target environment 
#SET(CMAKE_FIND_ROOT_PATH "${CMAKE_FIND_ROOT_PATH} ~/workspace/tinav2-new/out/astar-parrot/compile_dir/target/Python-2.7.11/ipkg-install")
#SET(CMAKE_FIND_ROOT_PATH "${CMAKE_FIND_ROOT_PATH} ~/workspace/tinav2-new/package/ros/console_bridge/install")
#SET(CMAKE_FIND_ROOT_PATH "${CMAKE_FIND_ROOT_PATH} ~/workspace/tinav2-new/out/astar-parrot/compile_dir/target/boost_1_64_0/ipkg-install")
#SET(CMAKE_FIND_ROOT_PATH "${CMAKE_FIND_ROOT_PATH} ~/workspace/tinav2-new/prebuilt/gcc/linux-x86/arm/toolchain-sunxi-musl/toolchain")


SET(CMAKE_FIND_ROOT_PATH  ~/workspace/tinav2-new/out/astar-parrot/compile_dir/target/Python-2.7.11/ipkg-install ~/workspace/tinav2-new/package/ros/console_bridge/install ~/workspace/tinav2-new/out/astar-parrot/compile_dir/target/boost_1_64_0/ipkg-install ~/workspace/tinav2-new/prebuilt/gcc/linux-x86/arm/toolchain-sunxi-musl/toolchain)
set(console_bridge_DIR ~/workspace/tinav2-new/package/ros/console_bridge/install/lib/x86_64-linux-gnu/console_bridge/cmake)

set(BZIP2_LIBRARIES "/home/henrisk/workspace/tinav2-new/out/astar-parrot/compile_dir/target/bzip2-1.0.6/ipkg-sunxi/libbz2/usr/lib/libbz2.so.1.0")
set(BZIP2_INCLUDE_DIR "/home/henrisk/workspace/tinav2-new/out/astar-parrot/compile_dir/target/bzip2-1.0.6")

SET(lz4_INCLUDE_DIRS "/home/henrisk/workspace/tinav2-new/out/astar-parrot/compile_dir/target/liblz4-r131/ipkg-install/usr/include")
SET(lz4_LIBRARIES "/home/henrisk/workspace/tinav2-new/out/astar-parrot/compile_dir/target/liblz4-r131/ipkg-install/usr/lib/liblz4.so")

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
#################################################################
