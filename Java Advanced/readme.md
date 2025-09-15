<div align="center">
  <img src="https://github.com/thejaobiell/MottuFlowJava/blob/main/MottuFlow/src/main/resources/static/images/logo.png?raw=true" alt="MottuFlow" width="200"/>
  <h1>𝙈𝙤𝙩𝙩𝙪𝙁𝙡𝙤𝙬</h1>
</div>

![Java](https://img.shields.io/badge/Java-21-orange.svg)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen.svg)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)
![Thymeleaf](https://img.shields.io/badge/Thymeleaf-3.x-lightgreen.svg)

**MottuFlow** é uma solução completa para gerenciamento de frotas de motocicletas, desenvolvida com arquitetura híbrida que combina **API REST** moderna com interface web intuitiva. O sistema utiliza **visão computacional** e **ArUco Tags** para identificação automática de veículos, oferecendo controle total sobre funcionários, pátios, motos, câmeras e localização de ativos.

## 🎯 Visão Geral

O MottuFlow foi desenvolvido como parte de um projeto acadêmico integrando as disciplinas de **Internet of Things (IoT)** e **Mobile Application Development**. A solução oferece:


- **📱 Arquitetura Híbrida**: API REST para integração mobile + Interface web Thymeleaf
- **🔒 Segurança Robusta**: Autenticação JWT e Spring Security
- **📊 Gestão Completa**: Controle de funcionários, frotas, pátios e status em tempo real

### 🎥 Demonstração

[![Ver demonstração no YouTube](https://img.shields.io/badge/YouTube-Ver%20Demonstração-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/watch?v=sNgxuqE-NmI)

### 🔗 Recursos Externos

- **[📂 Repositório GitHub](https://github.com/thejaobiell/MottuFlowJava)**
- **[🔌 Collection Postman](https://github.com/thejaobiell/MottuFlowJava/blob/main/MottuFlow/jsonsAPIREST/API%20-%20MottuFlow.postman_collection.json)**

## ✨ Funcionalidades

### 🏢 Módulos Principais

| Módulo | Descrição | Funcionalidades |
|--------|-----------|-----------------|
| **👥 Funcionários** | Gestão de recursos humanos | CRUD completo, perfis de acesso, histórico |
| **🏪 Pátios** | Gerenciamento de locais | Cadastro, monitoramento, capacidade |
| **🏍️ Motos** | Controle de frota | Registro, status, localização, manutenção |
| **📹 Câmeras** | Sistema de monitoramento | Configuração e status |
| **🏷️ ArUco Tags** | Identificação visual | Cadastro e rastreamento |
| **📍 Status & Localização** | Tracking em tempo real | Posição, disponibilidade, alertas |

### 🚀 Recursos Avançados

- ✅ **API REST Completa** - Documentação OpenAPI/Swagger
- ✅ **Interface Web Responsiva** - Thymeleaf + Bootstrap
- ✅ **Autenticação Segura** - JWT + Spring Security
- ✅ **Migração de Dados** - Flyway para versionamento de BD
- ✅ **Validação de Dados** - Bean Validation integrado

## 🛠️ Tecnologias

### Backend Core
- **Java 21** - LTS com recursos modernos
- **Spring Boot 3.x** - Framework principal
- **Spring Data JPA** - Persistência de dados
- **Spring Security** - Autenticação e autorização
- **Spring Web** - API REST

### Database & Migration
- **MySQL 8.0** - Banco de dados principal
- **Flyway** - Controle de versão do schema
- **HikariCP** - Pool de conexões otimizado

### Frontend & Templates
- **Thymeleaf** - Engine de templates


## 🏗️ Arquitetura

```
MottuFlow/
├── 📁 src/main/java/com/sprint/MottuFlow/
│   ├── 📁 controller/         # Controladores REST e Web
│   │   ├── 📁 rest/           # Endpoints API REST
│   │   └── 📁 web/            # Controladores Thymeleaf
│   ├── 📁 domain/             # Entidades de domínio (com Model, Repository, Service e DTO)
│   │   ├── 📁 arucotag/       # ArUco Tags
│   │   ├── 📁 autenticao/     # Autenticação
│   │   ├── 📁 camera/         # Câmeras
│   │   ├── 📁 funcionario/    # Funcionários
│   │   ├── 📁 localidade/     # Localidades
│   │   ├── 📁 moto/           # Motocicletas
│   │   ├── 📁 patio/          # Pátios
│   │   └── 📁 status/         # Status das motos
│   ├── 📁 infra/              # Infraestrutura
│   │   ├── 📁 exception/      # Tratamento de exceções
│   │   └── 📁 security/       # Configurações de segurança
│   └── 📄 MottuFlowApplication.java
├── 📁 src/main/resources/
│   ├── 📁 db/migration/       # Scripts Flyway
│   ├── 📁 static/             # Recursos estáticos
│   │   ├── 📁 css/            # Arquivos CSS
│   │   └── 📁 images/         # Imagens
│   ├── 📁 templates/          # Templates Thymeleaf
│   │   ├── 📁 arucotags/      # Templates ArUco Tags
│   │   ├── 📁 cameras/        # Templates Câmeras
│   │   ├── 📁 components/     # Componentes reutilizáveis
│   │   ├── 📁 funcionarios/   # Templates Funcionários
│   │   ├── 📁 localidades/    # Templates Localidades
│   │   ├── 📁 motos/          # Templates Motocicletas
│   │   ├── 📁 patios/         # Templates Pátios
│   │   └── 📁 status/         # Templates Status
│   └── 📄 application.properties
└── 📄 pom.xml                 # Dependências Maven
```

## 💾 Instalação

### 📋 Pré-requisitos

- **Java 21+** ([OpenJDK](https://openjdk.org/install/) ou [Oracle JDK](https://www.oracle.com/java/technologies/downloads/))
- **MySQL 8.0+** ([Download](https://dev.mysql.com/downloads/mysql/))
- **Maven 3.8+** ([Download](https://maven.apache.org/download.cgi))
- **Git** ([Download](https://git-scm.com/downloads))

### 🔧 Instalação Rápida

#### Via Terminal (Linux/macOS/WSL)

```bash
# Clone o repositório
git clone https://github.com/thejaobiell/MottuFlowJava.git
cd MottuFlowJava/MottuFlow

# Execute a aplicação (baixa dependências automaticamente)
./mvnw spring-boot:run
```

#### Via Windows PowerShell

```powershell
# Clone o repositório
git clone https://github.com/thejaobiell/MottuFlowJava.git
cd MottuFlowJava\MottuFlow

# Execute a aplicação
.\mvnw.cmd spring-boot:run
```

### 🔨 IDEs Suportadas

<details>
<summary><b>🚀 IntelliJ IDEA (Recomendado)</b></summary>

1. **File** → **Open**
2. Selecione a pasta `MottuFlow` (contém `pom.xml`)
3. Aguarde o IntelliJ importar as dependências Maven
4. Execute `MottuFlowApplication.java` → **Run**

</details>

<details>
<summary><b>🌙 Eclipse IDE</b></summary>

1. **File** → **Import** → **Maven** → **Existing Maven Projects**
2. **Browse** → Selecione pasta `MottuFlow`
3. Marque o `pom.xml` → **Finish**
4. **Run As** → **Spring Boot App**

</details>

<details>
<summary><b>💻 VS Code</b></summary>

1. Instale as extensões: **Java Extension Pack**, **Spring Boot Extension Pack**
2. Abra a pasta `MottuFlow`
3. **Ctrl+Shift+P** → "Spring Boot: Run"

</details>

---

## ⚙️ Configuração

### 🗄️ Banco de Dados MySQL

#### 1. Instalação MySQL

##### 🔹 **Linux (Ubuntu/Debian)**

```bash
sudo apt update
sudo apt install mysql-server mysql-client
sudo mysql_secure_installation
```

---

##### 🔹 **Windows**

1. Baixe o **MySQL Installer**:
   👉 [Download MySQL Installer](https://dev.mysql.com/downloads/installer/)

2. Durante a instalação, escolha:

   * **Server Only** (somente servidor) ou **Full** (se quiser Workbench e utilitários).
   * Configure a senha do usuário `root`.

3. Após a instalação, inicie o MySQL.

4. Para acessar via terminal do Windows:

   * Pressione `Win + R`, digite `cmd` e execute:

   ```bash
   mysql -u root -p
   ```

   * Digite a senha configurada.

#### 2. Criação do Usuário e Banco

```sql
-- Execute no MySQL como root
CREATE USER 'mottu_user'@'%' IDENTIFIED BY 'user123';
GRANT ALL PRIVILEGES ON mottuflow.* TO 'mottu_user'@'%';
FLUSH PRIVILEGES;
```

> Se quiser restringir só para a máquina local, use `'localhost'` no lugar de `%`.

---

#### 3. Configuração da Aplicação (`src/main/resources/application.properties`)

```properties
spring.application.name=MottuFlow

spring.datasource.url=jdbc:mysql://localhost:3306/mottuflow?createDatabaseIfNotExist=true

spring.datasource.username= # COLOQUE O SEU USUÁRIO
spring.datasource.password= # COLOQUE A SUA SENHA

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.database-platform=org.hibernate.dialect.MySQL8Dialect

spring.flyway.enabled=true
spring.flyway.locations=classpath:db/migration
spring.flyway.repair=true
spring.flyway.repair-on-migrate=true

logging.level.root=WARN

logging.level.org.springframework=WARN
logging.level.org.hibernate=WARN
logging.level.com.mysql.cj=WARN
logging.level.oracle.jdbc=WARN
logging.level.org.apache.tomcat=WARN
logging.level.org.apache.catalina=WARN
logging.level.org.springframework.security=WARN
logging.level.org.springframework.web=WARN
logging.level.org.springframework.boot=WARN
logging.level.org.springframework.data=WARN
logging.level.org.springframework.context=WARN
logging.level.org.springframework.validation=WARN
logging.level.org.hibernate.orm.deprecation=ERROR
spring.jpa.open-in-view=false
logging.level.org.springframework.orm.jpa.JpaBaseConfiguration=ERROR

logging.level.com.sprint.MottuFlow=WARN

spring.main.allow-bean-definition-overriding=true

server.address=0.0.0.0
server.port=8080
```

---

## 🚀 Uso

### 1. Iniciando a Aplicação

```bash
./mvnw spring-boot:run
```

**Saída esperada:**
```
 ██████╗ ███╗   ██╗██╗     ██╗███╗   ██╗███████╗██╗
██╔═══██╗████╗  ██║██║     ██║████╗  ██║██╔════╝██║
██║   ██║██╔██╗ ██║██║     ██║██╔██╗ ██║█████╗  ██║
██║   ██║██║╚██╗██║██║     ██║██║╚██╗██║██╔══╝  ╚═╝
╚██████╔╝██║ ╚████║███████╗██║██║ ╚████║███████╗██╗
 ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝

Clique aqui para acessar o Thymeleaf:   http://localhost:8080

Clique aqui para acessar o Swagger UI:   http://localhost:8080/swagger-ui/index.html
```

### 2. Acessos Principais

| Serviço | URL | Descrição |
|---------|-----|-----------|
| **🖥️ Interface Web** | http://localhost:8080 | Dashboard principal |
| **📡 API REST** | http://localhost:8080/api | Endpoints REST |
| **📚 Documentação** | http://localhost:8080/swagger-ui.html | Swagger UI (se configurado) |

### 3. Usuários Padrão

| Usuário | Senha | Cargo | Acesso |
|---------|-------|--------|--------|
| `admin@email.com` | `adminmottu` | Administrador | Completo | 
| `joao@email.com` | `joao123` | Mecânico | Limitado | 
| `maria@email.com` | `maria123` | Gerente | Completo | 

> Recomendado usar a conta de Administrador para teste

---

## 🔐 Autenticação JWT

Todas as requisições para a **API MottuFlow** exigem autenticação via **JWT (JSON Web Token)**.

---

### ✅ Usando o Postman

1. **Importe** a coleção [API - MottuFlow.postman\_collection.json](https://github.com/thejaobiell/MottuFlowJava/blob/main/MottuFlow/jsonsAPIREST/API%20-%20MottuFlow.postman_collection.json) no Postman.
2. No menu **`0 - JWT`**, execute o **POST Pegar Token JWT**, informando no **body** o `email` e `senha` do funcionário:

   ```json
   {
     "email": "admin@email.com",
     "senha": "adminmottu"
   }
   ```
3. Copie o valor de **`tokenAcesso`** retornado.
4. Vá até **API - MottuFlow → Variables**.
5. Substitua o valor da variável `jwt` pelo seu **token JWT**.
6. Agora todos os endpoints da coleção já estarão autenticados. 🚀

---

### ✅ Usando o Terminal (cURL)

1. **Login para obter o token:**

   ```bash
   curl -X POST http://localhost:8080/api/login \
     -H "Content-Type: application/json" \
     -d '{"email": "admin@email.com", "senha": "adminmottu"}'
   ```

   **Resposta esperada:**

   ```json
   {
     "tokenAcesso": "eyJhbGciOiJIUzI1NiIsInR5cCI6Ikp..."
   }
   ```

2. **Use o token nas chamadas protegidas:**

   ```bash
   curl -X GET http://localhost:8080/api/funcionario/listar \
     -H "Authorization: Bearer SEU_TOKEN_AQUI"
   ```

---

👉 Dica: sempre prefixe o token com **`Bearer `** no cabeçalho `Authorization`.

## 📡 API REST

### 🛣️ Principais Endpoints

<details>
<summary><b>👥 Funcionários</b></summary>

```bash
# Listar funcionários
GET /funcionario/listar

# Buscar por ID
GET /funcionario/buscar-por-id/{id}

# Buscar por CPF
GET /funcionario/buscar-por-cpf/{cpf}

# Criar funcionário
POST /funcionario/cadastrar
{
  "nome": "João Silva",
  "cpf": "123.456.789-00",
  "cargo": "OPERADOR",
  "telefone": "(11) 99999-9999",
  "email": "joao@mottuflow.com",
  "senha": "senha123"
}

# Atualizar funcionário
PUT /funcionario/editar/{id}

# Deletar funcionário
DELETE /funcionario/deletar/{id}
```

</details>

<details>
<summary><b>🏢 Pátios</b></summary>

```bash
# Listar pátios
GET /patios/listar

# Buscar por ID
GET /patios/buscar-por-id/{id}

# Criar pátio
POST /patios/cadastrar

# Atualizar pátio
PUT /patios/editar/{id}

# Deletar pátio
DELETE /patios/deletar/{id}
```

</details>

<details>
<summary><b>🏍️ Motos</b></summary>

```bash
# Listar motos
GET /motos/listar

# Buscar por ID
GET /motos/buscar-por-id/{id}

# Buscar por Fabricante
GET /motos/buscar-por-fabricante?fabricante=Yamaha

# Buscar por Pátio
GET /motos/buscar-por-patio/{idPatio}

# Criar moto
POST /motos/cadastrar

# Atualizar moto
PUT /motos/editar/{id}

# Deletar moto
DELETE /motos/deletar/{id}
```

</details>

<details>
<summary><b>📹 Câmeras</b></summary>

```bash
# Listar câmeras
GET /cameras/listar

# Buscar por ID
GET /cameras/buscar-por-id/{id}

# Buscar por Status
GET /cameras/buscar-por-status/{status}

# Criar câmera
POST /cameras/cadastrar

# Atualizar câmera
PUT /cameras/editar/{id}

# Deletar câmera
DELETE /cameras/deletar/{id}
```

</details>

<details>
<summary><b>🏷️ ArucoTags</b></summary>

```bash
# Listar tags
GET /aruco-tags/listar

# Buscar por ID
GET /aruco-tags/buscar-por-id/{id}

# Buscar por Código
GET /aruco-tags/buscar-por-codigo/{codigo}

# Buscar por Status
GET /aruco-tags/buscar-por-status/{status}

# Criar tag
POST /aruco-tags/cadastrar

# Atualizar tag
PUT /aruco-tags/editar/{id}

# Deletar tag
DELETE /aruco-tags/deletar/{id}
```

</details>

<details>
<summary><b>📊 Status</b></summary>

```bash
# Listar status
GET /status/listar

# Buscar por ID
GET /status/buscar-por-id/{id}

# Buscar por Tipo
GET /status/buscar-por-tipo?tipoStatus=...

# Buscar por Descrição
GET /status/buscar-por-descricao?descricao=...

# Criar status
POST /status/cadastrar

# Atualizar status
PUT /status/editar/{id}

# Deletar status
DELETE /status/deletar/{id}
```

</details>

<details>
<summary><b>📍 Localidades</b></summary>

```bash
# Listar localidades
GET /localidades/listar

# Buscar por ID
GET /localidades/buscar-por-id/{id}

# Buscar por Ponto de Referência
GET /localidades/buscar-por-ponto-referencia/{ponto}

# Buscar por Período
GET /localidades/buscar-por-periodo?dataInicio=...&dataFim=...

# Criar localidade
POST /localidades/cadastrar

# Atualizar localidade
PUT /localidades/editar/{id}

# Deletar localidade
DELETE /localidades/deletar/{id}
```

</details>

---

## 👥 Equipe

<table>
<tr>
<td align="center">
<a href="https://github.com/thejaobiell">
<img src="https://github.com/thejaobiell.png" width="100px;" alt="João Gabriel"/><br>
<sub><b>João Gabriel Boaventura</b></sub><br>
<sub>RM554874 • 2TDSB2025</sub><br>
</a>
</td>
<td align="center">
<a href="https://github.com/leomotalima">
<img src="https://github.com/leomotalima.png" width="100px;" alt="Léo Mota"/><br>
<sub><b>Léo Mota Lima</b></sub><br>
<sub>RM557851 • 2TDSB2025</sub><br>
</a>
</td>
<td align="center">
<a href="https://github.com/LucasLDC">
<img src="https://github.com/LucasLDC.png" width="100px;" alt="Lucas Leal"/><br>
<sub><b>Lucas Leal das Chagas</b></sub><br>
<sub>RM551124 • 2TDSB2025</sub><br>
</a>
</td>
</tr>
</table>
