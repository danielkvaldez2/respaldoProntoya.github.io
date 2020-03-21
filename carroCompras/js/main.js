document.addEventListener('DOMContentLoaded', () =>{
    const cookies = document.cookie.split(';');
    let cookie = null;
    cookies.forEach(item =>{
        if(item.indexOf('items') > -1){
            cookie = item; //asigno elemento a la cookie
        }
    });
    if(cookie != null){
        const count = cookie.split('=')[1];
        console.log(count);
        document.querySelector('.btn-carrito').innerHTML = `(${count}) Carrito`;
    }
})
 
const bCarrito = document.querySelector('.btn-carrito'); //in out window carrito

bCarrito.addEventListener('click', (e) =>{
    e.preventDefault();
    const carritoContainerbg = document.querySelector('#bg-windows');
  
    
    if(carritoContainerbg.style.visibility == 'hidden'){
        carritoContainerbg.style.visibility = 'visible';

        actualizarCarritoUI();
    }else{
        carritoContainerbg.style.visibility = 'hidden';
    }
    
});



function actualizarCarritoUI(){
    fetch('http://localhost/sistema/respaldoProntoya/carroCompras/api/carrito/api-carrito.php?action=mostrar')
    .then(response =>{
        return response.json();
    })
    .then(data =>{
        console.log(data);
        let tablaCont = document.querySelector('#tabla'); // obtener el obj id=tabla del menu.php
        let precioTotal = '';
        let html = ``;
        data.items.forEach(element => {
            html += `
                <div class='fila'>
                    <div class='imagen'>
                      <img src='img/productos/miniatura/Shop_Mini_${element.imagen}' height='50' width='50' />
                    </div>
                    <div class='info'>
                        <input type='hidden' value='${element.id}' />
                        <div class='nombre'>${element.cantidad} -- ${element.nombre}</div>
                        <div>${element.cantidad} items de $${element.precio}</div>
                        <div>Subtotal: $${element.subtotal}</div>
    
                        <div class="botones"><button class="btn-add btnadd"> +1 </button></div>
                        <div class='botones'><button class='btn-remove'> -1 </button></div>

                    </div>
                </div>
            `;
        });

        Comprar = ` </br>`;
        Comprar += `<div class="btnC">comprar</div>`;
        precioTotal = `<p>Total: $${data.info.total}</p>`;
        tablaCont.innerHTML = Comprar + precioTotal + html;
        //cookie obtiene nro elementos 
        document.cookie = `items=${data.info.count}`;
        document.querySelector('.btn-carrito').innerHTML = `(${data.info.count}) Carrito`;

        document.querySelectorAll('.btn-add').forEach(boton =>{
            boton.addEventListener('click', () => {
                const id = boton.parentElement.parentElement.children[0].value;
                addItemToCarrito(id);
            })
        });
        document.querySelectorAll('.btn-remove').forEach(boton =>{
            boton.addEventListener('click', () => {
                const id = boton.parentElement.parentElement.children[0].value;
                removeItemFromCarrito(id);
            })
        });
        document.querySelectorAll('.btnC').forEach(boton =>{
            boton.addEventListener('click', () => {
                       // console.log(data);
                       // console.log( data.info  );
                       // console.log( data.items  ) ;     
                 comprarItemsFromCarrito(data);

            })
        });
    });
}

const botones = document.querySelectorAll('button');

botones.forEach(boton => {
    const id = boton.parentElement.parentElement.children[0].value;
    boton.addEventListener('click', e =>{
        addItemToCarrito(id);
    });
});

const addItemToCarrito = id =>{
    fetch('http://localhost/sistema/respaldoProntoya/carroCompras/api/carrito/api-carrito.php?action=add&id=' + id)
    .then(response =>{
        return response.text();
    })
    .then(data =>{
        actualizarCarritoUI();
    });
};

const removeItemFromCarrito = id =>{
    fetch('http://localhost/sistema/respaldoProntoya/carroCompras/api/carrito/api-carrito.php?action=remove&id=' + id)
    .then(res =>{
        return res.json();
    })
    .then(data =>{
        console.log(data.statuscode);
        actualizarCarritoUI();
    });
};
 
const comprarItemsFromCarrito = data =>{  
    console.log(data);
    let tablaCont = document.querySelector('#tabla'); // obtener el obj id=tabla del menu.php
    let precioTotal = '';
    let html5 = ``;
    let html = ``;
    data.items.forEach(element => {
        html += `
            <div class='fila'>
                <div class='imagen'>
                  <img src='img/productos/miniatura/Shop_Mini_${element.imagen}' height='50' width='50' />
                </div>
                <div class='info'>
                  
                      <b> ${element.nombre}</b> <small>
                     Cantidad: </small><b> ${element.cantidad}</b> <small> items de $: </small> <b>${element.precio}</b>  <small> 
                    Subtotal: $:  </small><b>${element.subtotal}</b> 
                    

                </div>
            </div>
        `;
        html5+= `|__Cant:_${element.cantidad}_${element.nombre}_$_${element.precio}__|`;
    });

    precioTotal = `<p>Total:$${data.info.total}</p>`;
    Comprar = ` </br><div class="btnC">gracias por su compra</div>`;
    Comprar += `<a href="https://wa.me/543765059161?text=%20Mi%20compra%20es:%20`+html5+`%20Cantidad%20Productos:%20${data.info.count}%20-%20TOTAL:%20$%20${data.info.total}%20" target="_blank"   class="btnConf"> confirmar </a>`;
    Comprar +=`<a href="http://localhost/sistema/respaldoProntoya/carroCompras/lib/logout.php" class="btnConf">Vaciar Carrito </a>`
  
    tablaCont.innerHTML = Comprar + precioTotal + html;
    console.log(data);
   
    document.cookie = `items=${data.info.count}`;
    document.querySelector('.btn-carrito').innerHTML = `(${data.info.count}) Carrito`;
        
     
};

 