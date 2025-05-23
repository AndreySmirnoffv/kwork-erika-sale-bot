-- CreateTable
CREATE TABLE "User" (
    "id" BIGSERIAL NOT NULL,
    "username" TEXT,
    "chatId" BIGINT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Payment" (
    "id" BIGSERIAL NOT NULL,
    "paymentId" TEXT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "paid" BOOLEAN NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'pending',
    "userId" BIGINT NOT NULL,

    CONSTRAINT "Payment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_chatId_key" ON "User"("chatId");

-- CreateIndex
CREATE UNIQUE INDEX "Payment_paymentId_key" ON "Payment"("paymentId");

-- AddForeignKey
ALTER TABLE "Payment" ADD CONSTRAINT "Payment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("chatId") ON DELETE RESTRICT ON UPDATE CASCADE;
