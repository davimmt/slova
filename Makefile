IMAGE_NAME = slova
PORT = 4321

# Constrói a imagem Docker
build:
    docker build -t $(IMAGE_NAME) .

# Executa o container em modo de desenvolvimento
run:
    docker run -it -p $(PORT):$(PORT) -v $(PWD):/app $(IMAGE_NAME)

# Para o container (necessita do ID do container manualmente ou via script adicional)
stop:
    @echo "Use 'docker stop <container-id>' para parar o container (pegue o ID com 'docker ps')"

# Acessa o terminal interativo dentro do container em execução
shell:
    @echo "Use 'docker exec -it <container-id> sh' (pegue o ID com 'docker ps')"
    @echo "Exemplo: docker exec -it $$(docker ps -q -f ancestor=$(IMAGE_NAME)) sh"

# Remove a imagem Docker (limpeza)
clean:
    docker rmi $(IMAGE_NAME)

# Exibe ajuda com os comandos disponíveis
help:
    @echo "Comandos disponíveis:"
    @echo "  make build    - Constrói a imagem Docker"
    @echo "  make run      - Executa o container Astro em modo de desenvolvimento"
    @echo "  make stop     - Instrução para parar o container"
    @echo "  make shell    - Instrução para acessar o terminal do container"
    @echo "  make clean    - Remove a imagem Docker"
    @echo "  make help     - Exibe esta mensagem"

# Define o comando padrão como 'help'
.PHONY: build run stop shell clean help
default: help
