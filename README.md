# Meu Professor
Sistemas de coleta de feedback e avaliação de professores.
Feito por alunos do curso de Sistemas de Informação - UFSC

# Subindo a aplicação

## Baixando o projeto
* Clone o projeto em sua máquina
```
git clone git@github.com:casinufsc/meu-professor.git
```

## Utilizando Docker e Docker Compose
[Instale o Docker junto com o Docker Compose em sua máquina](https://docs.docker.com/compose/install/)

Navegue no terminal até a pasta em que você clonou o projeto do GitHub

Execute os seguintes comandos:

```bash
docker-compose build
docker-compose up
docker-compose run web rake db:create
```

Depois dos comandos executados você terá a aplicação disponível na página http://localhost:3000 

