var products = document.getElementById('products');
var dataRequest = new XMLHttpRequest();
var url = "https://dig33-individual-assignment-s3412678.c9users.io/api/product/get_product.php";


dataRequest.open("GET", url, true);
dataRequest.setRequestHeader("content-type", "application/json");
dataRequest.onreadystatechange = function () {
  if (dataRequest.readyState === 4 && dataRequest.status === 200) {
    var content = JSON.parse(dataRequest.responseText);
    products.innerHTML = content.map(productsTemplate).join("");
    
    console.log(content);
  }
};
dataRequest.send(null);


function productsTemplate(details) {
  return `
    <div class="wine">
        <img class="wine-image" src="${details.image_url}">
        <h2 class="wine-name">${details.name} </h2>
        <p><strong>Price:</strong> ${details.price} </p>
        <p><strong>Description:</strong> ${details.description} </p>
    </div>
  `;
}