-- CreateTable
CREATE TABLE "public"."Construction" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) DEFAULT CURRENT_TIMESTAMP,
    "user_id" UUID,
    "name" TEXT NOT NULL DEFAULT '',
    "start_date" TIMESTAMP(6),
    "finish_date" TIMESTAMP(6),
    "address" VARCHAR,

    CONSTRAINT "Construction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Expense" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) DEFAULT CURRENT_TIMESTAMP,
    "date" DATE,
    "type" TEXT,
    "description" TEXT,
    "amount" DOUBLE PRECISION NOT NULL,
    "construction_id" BIGINT,
    "payment_method" TEXT DEFAULT '',

    CONSTRAINT "Expense_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Construction_name_key" ON "public"."Construction"("name");

-- AddForeignKey
ALTER TABLE "public"."Construction" ADD CONSTRAINT "Construction_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "public"."Expense" ADD CONSTRAINT "Expense_construction_id_fkey" FOREIGN KEY ("construction_id") REFERENCES "public"."Construction"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
