import { YooCheckout } from "@a2seven/yoo-checkout";

export const checkout = new YooCheckout({
    secretKey: process.env.YOOKASSA_SECRET_KEY,
    shopId: process.env.YOOKASSA_SHOP_ID
})