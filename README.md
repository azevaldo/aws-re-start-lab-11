# aws-re-start-lab-11
# AWS EC2 — Lab 01

Laboratório prático de Amazon EC2 realizado durante o programa AWS re/Start.

##  Sobre

Este laboratório apresenta os conceitos básicos de criação, configuração, monitoramento, redimensionamento e encerramento de uma instância Amazon EC2.

##  Objetivos

* Criar uma instância EC2.
* Configurar um servidor web Apache.
* Utilizar um Security Group.
* Monitorar uma instância EC2.
* Alterar o tipo da instância.
* Redimensionar um volume EBS.
* Utilizar proteção contra término.
* Encerrar uma instância EC2.

##  Arquitetura

Internet
   │
   │ HTTP :80
   ▼
Security Group
   │
   ▼
EC2
Amazon Linux 2023
   │
   ├── Apache HTTP Server
   │
   └── EBS

##  Serviços utilizados

* Amazon EC2
* Amazon EBS
* Amazon CloudWatch
* Security Groups
* Amazon VPC

##  Configuração

### Configuração inicial

| Recurso                | Configuração           |
| ---------------------- | ---------------------- |
| AMI                    | Amazon Linux 2023      |
| Instância              | t3.micro               |
| Armazenamento          | 8 GiB                  |
| Servidor web           | Apache                 |
| HTTP                   | Inicialmente bloqueado |
| Termination Protection | Ativada                |

### Alterações realizadas

| Recurso           | Antes     | Depois    |
| ----------------- | --------- | --------- |
| Tipo de instância | t3.micro  | t3.small  |
| Volume EBS        | 8 GiB     | 10 GiB    |
| HTTP              | Bloqueado | Permitido |

##  Servidor Web

A instância utiliza um script de User Data para instalar e iniciar automaticamente o Apache.

O arquivo utilizado está disponível em:

`scripts/user-data.sh`

Após liberar o tráfego HTTP na porta 80 pelo Security Group, o servidor passa a responder através do IPv4 público da instância.

##📊 Monitoramento

Durante o laboratório foram verificadas:

* verificações de status da instância;
* acessibilidade do sistema;
* acessibilidade da instância;
* métricas básicas do CloudWatch;
* captura de tela da instância para diagnóstico.

##  Proteção contra término

A proteção contra término foi ativada durante a criação da instância.

Ao tentar encerrar a instância, a operação foi bloqueada.

Depois, a proteção foi desativada e a instância pôde ser encerrada normalmente.

##  Encerramento

Ao final do laboratório, a instância EC2 foi encerrada para evitar a permanência de recursos desnecessários.

> Este projeto é uma documentação do laboratório e não contém credenciais, chaves privadas ou informações sensíveis da conta AWS.

##  Aprendizados

Neste laboratório pratiquei:

* criação e configuração de instâncias EC2;
* configuração de Security Groups;
* utilização de User Data;
* instalação automatizada de um servidor web;
* monitoramento básico com CloudWatch;
* alteração do tipo de instância;
* redimensionamento de volumes EBS;
* proteção contra término de instâncias.

##  Referências

* [Amazon EC2](https://aws.amazon.com/ec2/)
* [Documentação do Amazon EC2](https://docs.aws.amazon.com/ec2/)
* [Documentação do Amazon EBS](https://docs.aws.amazon.com/ebs/)
* [Documentação do Amazon CloudWatch](https://docs.aws.amazon.com/cloudwatch/)

##  Autor

Azevaldo Caluaco
Desenvolvedor de software.
