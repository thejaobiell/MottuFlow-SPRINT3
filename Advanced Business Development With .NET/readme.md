<div align="center">
  <img src="https://github.com/thejaobiell/MottuFlowJava/blob/main/MottuFlow/src/main/resources/static/images/logo.png?raw=true" alt="MottuFlow" width="200"/>
  <h1>𝙈𝙤𝙩𝙩𝙪𝙁𝙡𝙤𝙬</h1>
</div>

![.NET](https://img.shields.io/badge/.NET-8-blue.svg)
![ASP.NET Core](https://img.shields.io/badge/ASP.NET%20Core-8.0-green.svg)
![Oracle](https://img.shields.io/badge/Oracle-19c-red.svg)
![xUnit](https://img.shields.io/badge/xUnit-2.5-orange.svg)

## 🚀 Sobre o Projeto

**MottuFlow** é uma solução completa para gerenciamento de frotas de motocicletas, combinando **API REST** moderna com interface web intuitiva. Utiliza **visão computacional** e **ArUco Tags** para identificação automática de veículos, oferecendo controle total sobre funcionários, pátios, motos, câmeras e localização de ativos.

## 👥 Integrantes

| Nome | RM | Turma |
|------|----|-------|
| João Gabriel Boaventura | 557854 | 2TDSB2025 |
| Léo Mota Lima | 557851 | 2TDSB2025 |
| Lucas Leal das Chagas | 551124 | 2TDSB2025 |

## 📌 Justificativa da Arquitetura

Arquitetura em camadas para **manutenção, escalabilidade e testes**:

| Camada | Função |
|--------|--------|
| **Controller** | Recebe requisições HTTP e retorna respostas |
| **Service** | Contém regras de negócio e processamento de dados |
| **Repository** | Gerencia o acesso ao banco de dados |
| **Data/DbContext** | Conecta e gerencia operações no banco de dados |

**DTOs** são usados para padronizar dados entre camadas.

## 📌 Justificativa do Domínio

| Entidade | Função |
|----------|-------|
| **Funcionário** | Organiza e monitora motos no pátio |
| **Moto** | Principal recurso para entregas e locação |
| **Pátio** | Local físico para armazenamento e organização das motos |

## 🛠 Tecnologias

- **Backend:** ASP.NET Core 8  
- **Banco de Dados:** Oracle 19c  
- **Controle de Versão:** GitHub  
- **Swagger (Swashbuckle):** Documentação e testes de endpoints 

## 🏢 Módulos Principais

| Módulo | Descrição | Funcionalidades |
|--------|-----------|----------------|
| **👥 Funcionários** | Gestão de pessoas | CRUD, controle de acessos, histórico |
| **🏪 Pátios** | Gerenciamento de locais | Cadastro, monitoramento e capacidade |
| **🏍️ Motos** | Controle da frota | Registro, status, localização e manutenção |
| **📹 Câmeras** | Monitoramento visual | Configuração e status das câmeras |
| **🏷️ ArUco Tags** | Identificação automática | Cadastro e rastreamento via visão computacional |
| **📍 Status & Localização** | Rastreamento em tempo real | Monitoramento de posição, disponibilidade e alertas |

## 📂 Estrutura do Projeto

```
MottuFlow/
├── Controllers/              # Endpoints da API (recebem requisições HTTP)
├── DTOs/                     # Objetos de Transferência de Dados entre camadas
├── Data/                     # Configuração e contexto do banco de dados (DbContext)
├── Hateoas/                  # Implementação dos links HATEOAS
├── Helpers/                  # Classes utilitárias e funções de apoio
├── Migrations/               # Histórico e scripts de versionamento do banco
├── Models/                   # Entidades do domínio e modelos de dados
├── Properties/               # Configurações do projeto .NET
├── Repositories/             # Acesso a dados (consultas e persistência)
├── Services/                 # Regras de negócio e lógica da aplicação
├── Static/                   # Arquivos estáticos (imagens, css, js)
├── Swagger/                  # Configurações adicionais do Swagger/OpenAPI
├── .gitignore                # Arquivos e pastas ignorados pelo Git
├── AppDbContextFactory.cs    # Fábrica para criar instâncias do DbContext
├── MottuFlow.csproj          # Arquivo de configuração do projeto .NET
├── MottuFlow.http            # Arquivo de testes de requisições HTTP
├── Program.cs                # Ponto de entrada da aplicação
├── README.md                 # Documentação do projeto
├── appsettings.Development.json # Configurações específicas do ambiente de desenvolvimento
├── appsettings.json          # Configurações gerais da aplicação
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
- Navegador ou Postman: [http://localhost:5224](http://localhost:5224)  
- Swagger (OpenAPI): [http://localhost:5224/swagger](http://localhost:5224/swagger)

```
## 🖼 Endpoints e Exemplos de Payloads

### Funcionários
```http
GET /api/funcionarios
POST /api/funcionarios
PUT /api/funcionarios/{id}
DELETE /api/funcionarios/{id}
```
**Exemplo POST/PUT**
```json
[
  {
    "id_funcionario": 1,
    "nome": "Joao",
    "cpf": "539.371.598-60",
    "cargo": "Mecanico",
    "telefone": "(11) 99368-5770",
    "email": "joao@email.com",
    "senha": "123"
  }
]
```

### Pátios
```http
GET /api/patios
POST /api/patios
PUT /api/patios/{id}
DELETE /api/patios/{id}
```
**Exemplo POST/PUT**
```json
[
  {
    "id_patio": 1,
    "nome": "Patio Central",
    "endereco": "Rua Principal, 123",
    "capacidade_maxima": 50
  }
]
```

### Motos
```http
GET /api/motos
POST /api/motos
PUT /api/motos/{id}
DELETE /api/motos/{id}
```
**Exemplo POST/PUT**
```json
[
  {
    "id_moto": 1,
    "placa": "ABC-1234",
    "modelo": "Honda CB500",
    "fabricante": "Honda",
    "ano": 2021,
    "id_patio": 1,
    "localizacao_atual": "Setor A"
  }
]
```

### Câmeras
```http
GET /api/cameras
POST /api/cameras
PUT /api/cameras/{id}
DELETE /api/cameras/{id}
```
**Exemplo POST/PUT**
```json
[
  {
    "id_camera": 1,
    "status_operacional": "ATIVA",
    "localizacao_fisica": "Entrada do Patio",
    "id_patio": 1
  }
]
```

### ArUco Tags
```http
GET /api/aruco-tags
POST /api/aruco-tags
PUT /api/aruco-tags/{id}
DELETE /api/aruco-tags/{id}
```
**Exemplo POST/PUT**
```json
[
  {
    "id_tag": 1,
    "codigo": "TAG12345",
    "status": "ATIVO",
    "id_moto": 1
  }
]
```

### Registro de Status
```http
GET /api/registro-status
POST /api/registro-status
```
**Exemplo POST**
```json
[
  {
    "id_status": 1,
    "tipo_status": "Disponibilidade",
    "descricao": "Moto disponível para uso",
    "data_status": "2025-05-18T20:00:00",
    "id_moto": 1,
    "id_funcionario": 1
  }
]
```

### Localidades
```http
GET /api/localidades
POST /api/localidades
```
**Exemplo POST**
```json
[
  {
    "id_localidade": 1,
    "data_hora": "2025-05-18T20:00:00",
    "ponto_referencia": "Entrada Principal",
    "id_moto": 1,
    "id_patio": 1,
    "id_camera": 1
  }
]
```

---

### 🔗 HATEOAS
Todos os recursos retornam **links de navegação** seguindo o padrão **HATEOAS**, permitindo interação intuitiva entre endpoints:  

- `self` → Link para o próprio recurso  
- `update` → Link para atualizar o recurso  
- `delete` → Link para remover o recurso  

Esse padrão garante **descobribilidade**, facilitando o consumo da API e promovendo boas práticas REST.

---

### 📌 Boas Práticas e Observações
- **Status Codes Utilizados:**
  - `200 OK` → Requisição bem-sucedida  
  - `201 Created` → Recurso criado com sucesso  
  - `204 No Content` → Recurso atualizado ou excluído, sem retorno de conteúdo  
  - `400 Bad Request` → Erro de requisição (parâmetros inválidos ou faltantes)  
  - `404 Not Found` → Recurso não encontrado  

- **Documentação no Swagger:**  
  Todos os endpoints estão descritos e exemplificados:  
  - Exemplos de requisição e resposta  
  - Descrição detalhada de parâmetros  
  - Estrutura de modelos de dados

---

## ✅ Testes rápidos com cURL

### 🔹 1. Verificar se o Swagger está de pé
```bash
curl -i http://localhost:5224/swagger/index.html
```

### 🔹 2. Listar Funcionários (GET)
```bash
curl -i http://localhost:5224/api/funcionarios
```

### 🔹 3. Criar Funcionário (POST)
```bash
curl -X POST http://localhost:5224/api/funcionarios -H "Content-Type: application/json" -d '{
  "nome": "Teste API",
  "cpf": "12345678901",
  "cargo": "Dev",
  "telefone": "(11) 99999-9999",
  "email": "teste@api.com",
  "senha": "Senha123!"
}'
```

### 🔹 4. Health Check (Ping)
```bash
curl -i http://localhost:5224/api/health/ping
```
Resposta esperada:
```json
{ "status": "API rodando 🚀" }
```
