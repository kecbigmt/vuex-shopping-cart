<template>
    <div id="app">
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand">
                Shopping Cart Example
            </a>
            <a href="https://github.com/kecbigmt/vuex-shopping-cart">GitHub</a>
        </nav>
        <div class="container">
            <div class="card my-3">
                <div class="card-header">
                    Products
                </div>
                <div class="card-body">
                    <ProductList/>
                </div>
            </div>
            <ShoppingCart/>
        </div>
    </div>
</template>

<script>
import ProductList from './ProductList.vue'
import ShoppingCart from './ShoppingCart.vue'
export default {
    components: { ProductList, ShoppingCart }
}
</script>
