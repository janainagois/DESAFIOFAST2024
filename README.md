## DESAFIOFAST2024
#Repositório do Desafio do curso de Engenharia de Plataforma do Programa FAST da Cesar School

## Projeto DevOps: Infraestrutura com Docker Swarm e CI/CD

# Este repositório contém o código para provisionamento de infraestrutura na Google Cloud Platform (GCP), configuração de um cluster Docker Swarm e implementação de uma aplicação simples com CI/CD.

# Objetivo

Criar um cluster Docker Swarm com 3 nós e fazer o deploy de uma aplicação simples "Hello World" usando GitHub Actions como pipeline de CI/CD. Todo o provisionamento foi feito com Terraform e a configuração das máquinas com Ansible.

# Estrutura do Repositório

- **terraform/**: Contém os arquivos Terraform para provisionamento da infraestrutura na GCP.

- **ansible/**: Diretório com os playbooks para configurar o cluster e realizar o deploy.

- **docker_project/nginx/**: Configurações relacionadas ao Docker e ao cluster Swarm.

- **.gitignore/**: Arquivo para definir quais arquivos ou diretórios devem ser ignorados pelo Git.

- **.github/workflows/**: Arquivos do pipeline CI/CD configurados no GitHub Actions.

# Status Atual

A infraestrutura foi provisionada com sucesso e o pipeline CI/CD foi configurado. Contudo, ainda há problemas relacionados à orquestração do cluster Docker Swarm que precisam ser resolvidos.

# Melhorias Futuras

Resolver erros na configuração do cluster Docker Swarm.

Adicionar testes automatizados ao pipeline.

# Contribuições

Contribuições são bem-vindas! Caso encontre problemas ou tenha sugestões, fique à vontade para abrir uma issue ou enviar um pull request.
