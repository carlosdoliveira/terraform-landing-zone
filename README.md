![Terraform GitHub Actions](https://github.com/cdanieloliveira/terraform-landing-zone/workflows/Terraform%20GitHub%20Actions/badge.svg)

# Terraform Landing Zone
## Intrododução
O intuito deste repositório é apresentar um cenário de landing zone para intuito de estudo. 

---
## Sumário
 - [Pré-Requisitos](#Pré-Requisitos)
 - [Como usar este repositório](#como-usar-este-repositório)
 - [Clonando o repositório](#clonando-o-repositório)
 - [Realizando commit e push](#realizando-commit-e-push)
 - [Validando e construindo o ambiente Terraform](#Validando-e-construindo-o-ambiente-Terraform)
 - [Contato](#Contato)
 - [Change Log](#Change-log)

----

### Pré-Requisitos
Para usar este repositório você deve obrigatoriamente:
 - Usar o Azure CLI ou Azure Cloud Shell
 - Instalar o Terraform no seu computador (não é necessário se for usar o Azure Cloud Shell)

[Retornar ao topo](#Sumário) 

----------


### Como usar este repositório
Vai adicionar um novo script, ou quer testar algo que encontrou? **Crie uma branch**. Você não perde o que já existe no *master* e se der algum problema é só para sua branch e criar uma branch nova. Simples.
No arquivo [main.tf](main.tf) você encontrará as definições da infraestrutura. Sinta-se à vontade para visitar o documento e validar todas as configurações.

**Importante**: para usar testar é obrigatório que você já esteja logado com sua conta no Azure. 

[Retornar ao topo](#Sumário) 

---
### Clonando o repositório
Super simples, basta seguir o comando abaixo: 

``` Git
git clone https://github.com/cdanieloliveira/terraform-landing-zone.git
```
[Retornar ao topo](#Sumário) 

---

### Realizando commit e push
Tenha certeza de que você tenha editado os arquivos que quer fazer upload: 
``` Git
git add .
git commit -m "mensagem de commit"
git push -u origin master
```

**Dica**: use nomes fáceis para identificar sua branch, por exemplo: powershell/office365 ou teste/fulano porque desta forma, fica muito mais organizado e fácil na hora de trabalhar. 

[Retornar ao topo](#Sumário) 

---
#### Azure CLI
Se já quiser testar o ambiente funcional, tenha em mente que é necessári já estar logado no Azure CLI. Para ver em qual subscription será feito o deploy use o comando a seguir: 
``` cmd
$ az account list -o table
```
Com a tabela, selecione a subscription que você deseja utilizando inserindo o comando: 
``` cmd
$ az account set --Subscription 00000000-0000-000-0000-000000000000
```
Por fim, para confirmar que você está no escopo correto da assinatura, use o comando: 
``` cmd
$ az account show -o table
```
A partir deste ponto você já pode testar a implantação da infraestrutura com o comando `terraform plan` e, se estiver seguro com as informações, pode usar `terraform apply`.

#### Terraform
Como informado, você deve usar os comandos `terraform plan` e `terraform apply` mas existem algumas coisas que você deve se atentar: 
 - Este Script usa a versão v0.12.24 do Terraform. 
 - Verifique as tags no arquivo [variables.tf](variables.tf) e adicione as que mais fazem sentido para o seu deployment
 - Veja se a região também está de acordo com o que você precisa.
 - Por padrão, o prefixo indicado para os recursos é o "lz-". Fique à vontade para trocar.
 - Antes de rodar o comando `terraform plan`, procure validar a sintaxe do seu script usando `terraform validate`  

[Retornar ao topo](#Sumário) 

---
### Contato
Tem alguma dica de como melhorar este repositório? Me manda um oi!
[carlos.oliveira@cloudsquad.com.br](mailto:carlos.oliveira@cloudsquad.com.br)

[Retornar ao topo](#Sumário) 

---
# Change Log
## [1.0.2] - 2020-03-27
### Added
 - [main.tf](main.tf) agora possui configuração do Local Network gateway
 - [variables.tf](variables.tf) agora te dá opção de inserir o IP público do Local Network Gateway e também te dá opção de inserir o range de ip local. 
https://github.com/cdanieloliveira/terraform-landing-zone/blob/92f95e1ab68be5949e613a4862dbb9d25cb8c1d5/variables.tf#L36-L44
### Changed
### Fixed
 - Range de IP da Subnet Gateway Subnet agora está definido como `172.16.3.192/28`, opção suportada pelo azure.
---
## [1.0.1] - 2020-03-26 
### Added
 - Adicionada configuração de GatewaySubnet em main.tf
 - Adicionada configuração de VPN Gateway em main.tf
 - Adicionada configuração de VPN Connectio em main.tf
 - Chave pré-compartilhada criada por padrão em main.tf
### Changed
### Fixed
---
## [1.0.0] - 2020-03-25 
### Added
 - main.tf
 - variables.tf
 - outputs.tf (ainda em desenvolvimento)
### Changed
### Fixed

[Retornar ao topo](#Sumário) 
