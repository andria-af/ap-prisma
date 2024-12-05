-- CreateTable
CREATE TABLE "produtos" (
    "id" UUID NOT NULL,
    "descricao" VARCHAR(100) NOT NULL,
    "valor" DECIMAL(10,2) NOT NULL,
    "quantidade_em_estoque" INTEGER NOT NULL,
    "tipo_do_produto" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" BOOLEAN,

    CONSTRAINT "produtos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "usuarios" (
    "id" UUID NOT NULL,
    "nome" VARCHAR(100) NOT NULL,
    "idade" INTEGER NOT NULL,
    "tipo_do_produto" TEXT NOT NULL,
    "password" VARCHAR(20) NOT NULL,
    "link_do_github" TEXT,

    CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "lojas" (
    "cnpj" TEXT NOT NULL,
    "nome" VARCHAR(100) NOT NULL,
    "segmento" TEXT DEFAULT 'alimentação',
    "endereco" BIT(100) NOT NULL,
    "telefone" VARCHAR(20),
    "quantidade_de_filiais" INTEGER NOT NULL,
    "data_hora_abertura" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "lojas_pkey" PRIMARY KEY ("cnpj")
);

-- CreateTable
CREATE TABLE "fornecedores" (
    "id" UUID NOT NULL,
    "nome" VARCHAR(100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "avaliacao" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "fornecedores_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_tipo_do_produto_key" ON "usuarios"("tipo_do_produto");
