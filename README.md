# .dotfiles
Sakib Chowdhury's dotfiles, lightly seasoned. Cook time: 5 minutes. Serves 1.

Arch Linux required packages for pacstrap: dhcpcd python openssh grub vi efibootmgr sudo
get everything set up, create the user, add to sudoers
make sure dhcpcd.service and sshd.service is enabled
run sudo at least once on the machine so it doesn't clog up ansible

have your public key copied over to the target machine, then run the playbook
