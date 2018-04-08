#!/usr/bin/env bash
    set -e
    yum -y update
    yum -y install wget
    yum -y install tcpdump
    yum -y install etcd
    yum -y install gcc
    yum -y install gcc-c++
    yum -y install libnetfilter_queue
    yum -y install libnetfilter_queue-devel
    yum -y install iptables-devel
    #install modules to build kernel modules 
    yum -y install kernel-devel
    #install stuff needed to build kernel
    yum install -y ncurses-devel
    yum install -y bison
    yum install -y flex
    yum install -y elfutils-libelf-devel
    yum install -y bc
    yum install -y openssl-devel
    yum install -y perl
   
