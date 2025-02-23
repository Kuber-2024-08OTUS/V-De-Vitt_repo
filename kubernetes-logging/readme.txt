admin_local@sbvm:~$ kubectl get node -o wide --show-labels
NAME                        STATUS   ROLES    AGE   VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME     LABELS
cl1a2j7i4lljsh5ad4qa-utyv   Ready    <none>   18m   v1.31.2   10.128.0.8    <none>        Ubuntu 20.04.6 LTS   5.4.0-204-generic   containerd://1.6.28   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/instance-type=standard-v3,beta.kubernetes.io/os=linux,failure-domain.beta.kubernetes.io/zone=ru-central1-a,kubernetes.io/arch=amd64,kubernetes.io/hostname=cl1a2j7i4lljsh5ad4qa-utyv,kubernetes.io/os=linux,node.kubernetes.io/instance-type=standard-v3,node.kubernetes.io/kube-proxy-ds-ready=true,node.kubernetes.io/masq-agent-ds-ready=true,node.kubernetes.io/node-problem-detector-ds-ready=true,topology.kubernetes.io/zone=ru-central1-a,yandex.cloud/node-group-id=catm6bpps0lpgsrbabq9,yandex.cloud/pci-topology=k8s,yandex.cloud/preemptible=false
cl1k2vhtbipsm6gili5b-ococ   Ready    <none>   16m   v1.31.2   10.128.0.14   <none>        Ubuntu 20.04.6 LTS   5.4.0-204-generic   containerd://1.6.28   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/instance-type=standard-v3,beta.kubernetes.io/os=linux,failure-domain.beta.kubernetes.io/zone=ru-central1-a,kubernetes.io/arch=amd64,kubernetes.io/hostname=cl1k2vhtbipsm6gili5b-ococ,kubernetes.io/os=linux,node.kubernetes.io/instance-type=standard-v3,node.kubernetes.io/kube-proxy-ds-ready=true,node.kubernetes.io/masq-agent-ds-ready=true,node.kubernetes.io/node-problem-detector-ds-ready=true,topology.kubernetes.io/zone=ru-central1-a,yandex.cloud/node-group-id=catmpnem91148kkg7gl0,yandex.cloud/pci-topology=k8s,yandex.cloud/preemptible=false


admin_local@sbvm:~$ kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints
NAME                        TAINTS
cl1a2j7i4lljsh5ad4qa-utyv   <none>
cl1k2vhtbipsm6gili5b-ococ   [map[effect:NoSchedule key:node-role value:infra]]


