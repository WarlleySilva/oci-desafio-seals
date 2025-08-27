# 🚀 Desafio Oracle Cloud: OKE + FSDR

Repositório do desafio técnico OCI, cobrindo:
- Kubernetes (OKE)
- Aplicação Web com Ingress
- MySQL em PaaS
- Load Balancer + WAF
- Disaster Recovery com FSDR
- Segurança, Monitoramento e IAM

---

## 📌 Etapa 1: Cluster OKE + Aplicação Web

### ✅ Objetivo
Implantar uma aplicação web no cluster OKE com alta disponibilidade e acesso externo.

### 🔧 Tarefas Concluídas
- Cluster OKE criado na região `sa-sao-paulo-1`
- 3 nós em fault domains distintas (alta disponibilidade)
- Aplicação web com 2 réplicas usando `nginx:alpine`
- Página exibe o nome do pod (`App Rodando no Pod: web-app-xxxxx-abc12`)
- Recursos implantados:
  - `Deployment`
  - `Service` do tipo `ClusterIP`
  - `Ingress` com NGINX Ingress Controller
- Acesso público via Load Balancer: **http://146.235.61.100**

### 📁 Arquivos
- `manifests/deployment.yaml`
- `manifests/service.yaml`
- `manifests/ingress.yaml`

### 🖼️ Prints
- `docs/prints/etapa1-kubectl-get-all.png`
- `docs/prints/etapa1-ingress-ip.png`
- `docs/prints/etapa1-app-pod.png`

---

## 🐧 Próxima Etapa: MySQL em PaaS
- Criar instância MySQL em modo PaaS (fora do Kubernetes)
- Configurar Secret e ConfigMap no OKE
- Conectar aplicação ao banco

---

## 🐧 Etapa 2: MySQL em PaaS

- Instância MySQL criada com sucesso
- Private IP: `10.0.2.173`
- Acesso via VCN (seguro)
- Credenciais armazenadas em `Secret`
- Host e porta em `ConfigMap`
- Dump SQL gerado: `dump.sql`

✅ Entregas:
- `docs/configmap-mysql.yaml`
- `dump.sql`
- `kubectl get secret mysql-secret`

✅ **Desafio em andamento** | Por: Warlley Silva | Data: 27/08/2025
