## Teste de Conexão: Aplicação → MySQL

### Comando
```bash
kubectl exec web-app-c569bd5c8-gf6hq -- nc -zv 10.0.2.173 3306
