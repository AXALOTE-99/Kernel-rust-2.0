# Nome do executável do kernel
KERNEL = rust_kernel

# Compilador
CC = clang

# Flags de compilação
CFLAGS = -Wall -O2 -std=c99

# Arquivos fonte
SRC = kernel.c

# Diretórios
BUILD_DIR = build

# Arquivo de saída
OUT = $(BUILD_DIR)/$(KERNEL)

# Regra padrão para construir o kernel
all: $(BUILD_DIR) $(OUT)

# Compilar o kernel
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)
	@echo "Kernel compilado com Clang: $(OUT)"

# Criar o diretório build se não existir
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Limpeza do build
clean:
	rm -rf $(BUILD_DIR)
	@echo "Limpeza completa."

# Recompilar tudo
rebuild: clean all