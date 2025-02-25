helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm install argocd -n argocd --create-namespace argo/argo-cd -f values.yaml
