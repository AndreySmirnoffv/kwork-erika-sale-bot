import { checkout } from "../services/yookassa.service";
import { v7 } from 'uuid'

export async function createPayment(){

    //TODO: create a receipt
    const payload = {
        amount: {
            value,
            currency: "RUB"
        },
        confirmation: {
            type: "redirect",
            return_url: "google.com"
        },
        description: "payment"
    }

    const { id, amount: { value }, paid, created_at, status } = await checkout.createPayment(payload, v7())
}