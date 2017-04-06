#!/bin/bash

openstack overcloud deploy \
--templates \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e $PWD/network-environment.yaml \
-e $PWD/deploy.yaml -r $PWD/roles_data.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dpdk.yaml \
--ntp-server clock.redhat.com \
--libvirt-type kvm

