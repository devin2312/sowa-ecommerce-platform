console.log("Script loaded");
const API_URL = "http://localhost:8080/art/all";

let cart = [];

fetch(API_URL)
    .then(res => res.json())
    .then(data => {
        console.log(data);
        displayProducts(data);
    });

function displayProducts(products){
    const grid = document.getElementById("product-grid");
    
    products.forEach(p => {
        const div = document.createElement("div");
        div.className = "product";
        
        div.innerHTML = ` 
            <img src="${p.image_url}">
            <h3>${p.art_title}</h3>
            <p>Artist: ${p.artist_name}</p>
            <p>Size: ${p.size}</p> 
            <p>Price: Rs ${p.price}</p>
            <button onclick="addToCart('${p.id}', '${p.art_title}', ${p.price}, '${p.size}')">Add to Cart</button>
        `;
        
        grid.appendChild(div);
    });
}

function addToCart(id, title, price, size){
    const existing = cart.find(item => item.id === id);
    
    if(existing){
        existing.quantity++;
    } else {
        cart.push({
            id: id,
            title: title,
            price: price,
            size: size, 
            quantity: 1
        });
    }
    updateCart();
}

function updateCart(){
    const tbody = document.querySelector("#cart-table tbody");
    tbody.innerHTML = "";
    let total = 0;
    
    cart.forEach(item => {
        let itemTotal = item.price * item.quantity;
        total += itemTotal;
        
        const row = document.createElement("tr");
        
        row.innerHTML = `
            <td>${item.title}</td>
            <td>${item.size}</td>
            <td>${item.price}</td>
            <td>
                <input type="number" min="1" value="${item.quantity}" onchange="updateQuantity('${item.id}', this.value)">
            </td>
            <td>${itemTotal}</td>
            <td>
                <button onclick="removeFromCart('${item.id}')">Remove</button>
            </td>
        `;
        
        tbody.appendChild(row);
    });
    
    document.getElementById("cart-total").innerText = "Total: Rs " + total;
}

function updateQuantity(id, qty){
    const item = cart.find(i => i.id === id);
    item.quantity = parseInt(qty);
    updateCart();
}

function removeFromCart(id){
    cart = cart.filter(item => item.id !== id);
    updateCart();
}