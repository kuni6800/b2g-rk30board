b2g-rk30board
machine dependent files for Rockchip RK3x on Boot to Gecko (B2G)
----------------------------------------------------------------

* prepare android files

  - you copy or mount files of system/ directory on android-4.2 for RK3x
    to device/rockchip/rk30board/prorietary/system.

  - if you mount system image(system.img), execute it.

    % sudo mount -o loop system.img device/rockchip/rk30board/proprietary/system

* patch

 - Before you build b2g, apply patches under this directory.

    % cd device/rockchip/rk30board/patches
    % ./patch.sh

   and when you want to revert the patches, execute it.

    % ./patch-rev.sh

