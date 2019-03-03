var product_type = document.getElementById('product_type');
var dataRequest = new XMLHttpRequest();
var url = "https://dig33-individual-assignment-s3412678.c9users.io/api/product_type/get_product_type.php";


dataRequest.open("GET", url, true);
dataRequest.setRequestHeader("content-type", "application/json");
dataRequest.onreadystatechange = function () {
  if (dataRequest.readyState === 4 && dataRequest.status === 200) {
    var content = JSON.parse(dataRequest.responseText);
    product_type.innerHTML = content.map(product_typeTemplate).join("");
    
    console.log(content);
  }
};
dataRequest.send(null);


function product_typeTemplate(details) {
  return `
    <div class="product">
      <img class="product-image" src="${details.image_url}">
        <h2 class="product-name">${details.type}</h2>
        <p><strong>Description:</strong> ${details.description} </p>
    </div>
  `;
}