# Отключение swap
sudo swapoff -a
sudo sed -i '/swap/s/^/#/' /etc/fstab

# Включение модулей и маршрутизации
sudo tee /etc/modules-load.d/kubernetes.conf <<EOF
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

sudo lsmod | grep netfilter

sudo tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system

# Установка Docker (containerd)
sudo apt-get update && sudo apt-get install -y containerd
sudo systemctl enable --now containerd
