<div align="center">
  <img src="https://github.com/thejaobiell/MottuFlowJava/blob/main/MottuFlow/src/main/resources/static/images/logo.png?raw=true" alt="MottuFlow" width="200"/>
  <h1>𝙈𝙤𝙩𝙩𝙪𝙁𝙡𝙤𝙬</h1>
</div>

![.NET](https://img.shields.io/badge/.NET-8-blue.svg)
![ASP.NET Core](https://img.shields.io/badge/ASP.NET%20Core-8.0-green.svg)
![Oracle](https://img.shields.io/badge/Oracle-19c-red.svg)
![xUnit](https://img.shields.io/badge/xUnit-2.5-orange.svg)


## 🚀 Sobre o Projeto

**MottuFlow** é uma solução completa para gerenciamento de frotas de motocicletas, desenvolvida com arquitetura híbrida que combina **API REST** moderna com interface web intuitiva. O sistema utiliza **visão computacional** e **ArUco Tags** para identificação automática de veículos, oferecendo controle total sobre funcionários, pátios, motos, câmeras e localização de ativos.

--- 

O sistema integra uma **API REST moderna** com interface web e utiliza **visão computacional** para automação na identificação dos veículos, facilitando o controle de:

- Funcionários  
- Pátios  
- Motos  
- Câmeras
- ArUco Tags
- Status e Localização em tempo real

---

## 👥 Integrantes

| Nome | RM | Turma |
|------|----|-------|
| João Gabriel Boaventura | 557854 | 2TDSB2025 |
| Léo Mota Lima | 557851 | 2TDSB2025 |
| Lucas Leal das Chagas | 551124 | 2TDSB2025 |

---

## 📌 Justificativa da Arquitetura

O MottuFlow .NET segue **arquitetura em camadas**, separando responsabilidades para facilitar **manutenção**, **escalabilidade** e **testes unitários**:

| Camada | Função |
|--------|--------|
| **Controller** | Recebe requisições HTTP e retorna respostas |
| **Service** | Contém regras de negócio e processamento de dados |
| **Repository** | Gerencia o acesso ao banco de dados |
| **Data/DbContext** | Conecta e gerencia operações no banco de dados |

**DTOs (Data Transfer Objects)** são usados para padronizar dados entre camadas, garantindo que apenas informações necessárias sejam expostas ou recebidas pela API.

---

## 📌 Justificativa do Domínio

As entidades refletem a operação da Mottu, startup especializada em locação e logística de motos:

| Entidade | Função |
|----------|-------|
| **Funcionário** | Organiza e monitora motos no pátio |
| **Moto** | Principal recurso para entregas e locação |
| **Pátio** | Local físico para armazenamento e organização das motos |

---

## 🛠 Tecnologias

- **Backend:** ASP.NET Core 8  
- **Banco de Dados:** Oracle 19c  
- **Controle de Versão:** GitHub  
- **Swagger (Swashbuckle):** Documentação e testes de endpoints

## 📂 Estrutura do Projeto

```
MottuFlow/
├── Controllers/
├── DTOs/
├── Data/
├── Hateoas/
├── Helpers/
├── Migrations/
├── Models/
├── Properties/
├── Repositories/
├── Services/
├── Static/
├── Swagger/
├── AppDbContextFactory.cs
├── MottuFlow.csproj
├── MottuFlow.http
├── Program.cs
├── README.md
├── appsettings.Development.json
├── appsettings.json
```

## 🚀 Execução da API

1. **Clone o repositório:**
```bash
git clone https://github.com/leomotalima/MottuFlow.git
cd MottuFlow
```

2. **Restaure pacotes e execute:**
```bash
dotnet restore
dotnet run
```

3. **Acesse a API:**
- Navegador/Postman: [http://localhost:5224](http://localhost:5224)  
- Swagger: [http://localhost:5224/swagger](http://localhost:5224/swagger)

## 🖼 Endpoints e Exemplos (curl)

### Funcionários
```bash
GET /api/funcionarios
POST /api/funcionarios -H "Content-Type: application/json" -d '{
  "nome": "Leonardo Mota",
  "cpf": "12345678900",
  "cargo": "Desenvolvedor",
  "telefone": "(11) 98765-4321",
  "email": "leonardo@email.com",
  "senha": "Senha123!"
}'
PUT /api/funcionarios/{id} -H "Content-Type: application/json" -d '{
  "nome": "Leonardo Mota"
}'
DELETE /api/funcionarios/{id}
```

### Motos
```bash
GET /api/motos
POST /api/motos -H "Content-Type: application/json" -d '{
  "Placa": "ABC-1234",
  "Modelo": "Honda CG 160",
  "Fabricante": "Honda",
  "Ano": 2023,
  "IdPatio": 1,
  "LocalizacaoAtual": "Entrada Principal"
}'
PUT /api/motos/{id} -H "Content-Type: application/json" -d '{
  "Modelo": "Honda CG 160"
}'
DELETE /api/motos/{id}
```

### Pátios
```bash
GET /api/patios
POST /api/patios -H "Content-Type: application/json" -d '{
  "Nome": "Patio Central",
  "Endereco": "Rua das Flores, 123",
  "CapacidadeMaxima": 50
}'
PUT /api/patios/{id} -H "Content-Type: application/json" -d '{
  "Nome": "Patio Central"
}'
DELETE /api/patios/{id}
```

### Câmeras
```bash
GET /api/cameras
POST /api/cameras -H "Content-Type: application/json" -d '{
  "StatusOperacional": "Ativa",
  "LocalizacaoFisica": "Entrada Principal",
  "IdPatio": 1
}'
PUT /api/cameras/{id} -H "Content-Type: application/json" -d '{
  "StatusOperacional": "Ativa"
}'
DELETE /api/cameras/{id}
```

### ArUco Tags
```bash
GET /api/aruco-tags
POST /api/aruco-tags -H "Content-Type: application/json" -d '{
  "codigo": "TAG-001",
  "status": "Ativo",
  "id_moto": 1
}'
PUT /api/aruco-tags/{id} -H "Content-Type: application/json" -d '{
  "codigo": "TAG-001"
}'
DELETE /api/aruco-tags/{id}
```

### Localidades
```bash
GET /api/localidades
POST /api/localidades -H "Content-Type: application/json" -d '{
  "dataHora": "2025-09-30T12:00:00",
  "pontoReferencia": "Entrada Principal",
  "idMoto": 1,
  "idPatio": 1,
  "idCamera": 1
}'
```

### Registro de Status
```bash
GET /api/registro-status
POST /api/registro-status -H "Content-Type: application/json" -d '{
  "tipo_status": "Entrada",
  "descricao": "Moto entrou no pátio",
  "data_status": "2025-09-29T15:00:00",
  "id_moto": 1,
  "id_funcionario": 1
}'
```

## ✅ Testes da API
```bash
curl http://localhost:5224/api/teste/ids
curl http://localhost:5224/api/teste/nomes
```
Confirma que a API está ativa e responde corretamente.
