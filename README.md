 >>>>>>  https://www.thegeekstuff.com/2013/06/compile-linux-kernel/ <<<<<<<<

0. cd <InstallDir >/vagrant ; vagrant up  to bring up a VM for kernel development.


1.  Get kernel Code from https://www.kernel.org/
    ex:  wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.16.tar.xz
2. cd /usr/src 

3. tar xvf <Downlaoded Directory>/v4.x/linux-4.16.tar.xz

4. make menuconfig ( just save for default setup ) 

5. make 

6. make modules 

7. make install_modules 
   - This step installs modules at /lib/modules/<version> and will have build file linkes to
   <usr/src/kernels/<ver>

8. make install ( install kernel)
    - This will install Kernel at /boot directory 
      vmlinuz-3.9.3 – The actual kernel
      System.map-3.9.3 – The symbols exported by the kernel
      initrd.img-3.9.3 – initrd image is temporary root file system used during boot process
      config-3.9.3 – The kernel configuration file 

9. grub2-set-default "CentOS Linux (4.16.0) 7 (Core)" to make new kernel active . this example is
   about 4.16 

10. reboot 
  uname -r ( new kernel)
  i4.16.0 
