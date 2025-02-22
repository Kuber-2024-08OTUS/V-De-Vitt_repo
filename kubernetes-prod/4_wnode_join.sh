#sudo kubeadm join <master-ip>:8443 --token=<token>
kubeadm join 192.168.21.132:6443 --token c8ln2z.kz2y5uy8yb7j28nk \
        --discovery-token-ca-cert-hash sha256:13d1824be4dca927b6b50a5a4f5a82440d67e47c53e3285ae2722fe19e1340f8
