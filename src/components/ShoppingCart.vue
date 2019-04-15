<template>
    <div class="cart card my-3">
        <div class="card-header">Your Cart</div>
        <div class="card-body">
            <p v-show="products? !products.length : true"><i>Please add some products to cart.</i></p>
            <ul class="list-group">
                <li class="list-group-item"
                    v-for="product in products"
                    :key="product.id"
                >
                {{ product.title }} - {{ product.price | currency }} x {{ product.quantity }}
                </li>
            </ul>
            <hr>
            <p>Total: {{ total | currency }}</p>
            <p>
                <button
                    class="btn btn-primary"
                    :disabled="products? !products.length : true"
                    @click="checkout(products)"
                >
                Checkout
                </button>
            </p>
            <p v-show="checkoutStatus">Checkout {{ checkoutStatus }}.</p>
        </div>
    </div>
</template>

<script>
import { mapGetters, mapState } from 'vuex'

export default {
    computed: {
        ...mapState({
            checkoutStatus: state => state.cart.checkoutStatus
        }),
        ...mapGetters('cart', {
            products: 'cartProducts',
            total: 'cartTotalPrice'
        })
    },
    methods: {
        // dispatchとmapActionsの使い分け？
        checkout(products) {
            this.$store.dispatch('cart/checkout', products)
        }
    }
}
</script>
