#!/bin/bash

set -x

: "make authorized file" & {
mkdir /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
}

: "insert authorized" & {
cat << __EOF__ > /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCp7rTXcH/oVNuev/5VMRQ+aC4z/kvJvfmjS9ESy0jhD6hQZDHUZUzK0NKinJxvMmrdnD+FRhkOeceo+utxeONVloXTblc1FoXyBPvhMx2T/3arHuE0wemhfUwb0fDiwpKS+dwI/vFCgItUPpXDsm/HSiTJKgKb+lZY0PcScCmjpleKwiLQVoJzNU2xceI9vXbXk07LLH2PLJndci31+73UKSexOx64ag227ht0QKlbpxJfwfqjUQMR+PSderiK09xhlKfHbNGwRPvwnJUjO+qs7xhhSPu16ZTSkshO04+0E1ROsYyAQ9/XnCQr98PNdWw6gcxoA7AHrq/WfFGWFaHd for joke-command
__EOF__
}
