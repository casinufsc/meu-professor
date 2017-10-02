# Meu Professor
Sistemas de coleta de feedback e avaliação de professores.
Feito por alunos do curso de Sistemas de Informação - UFSC

# Subindo a aplicação

## Baixando o projeto
* Clone o projeto em sua máquina
```
git clone git@github.com:casinufsc/meu-professor.git
```

* Utilizando Docker e Docker Compose

Navegue no terminal até a pasta em que você clonou o projeto do GitHub

Execute os seguintes comandos:

```bash
docker-compose build
docker-compose up
docker-compose run web rake db:create
```

Depois dos comandos executados você terá a aplicação disponível na página http://localhost:3000

# Dúvidas sobre o projeto, tecnologias utilizadas no projeto e mais(!)
Centralizaremos os conteúdos de aprendizados em nossa [Wiki](https://github.com/casinufsc/meu-professor/wiki). Não esqueça de dar uma passada por lá.
