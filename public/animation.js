function updateSliderValue(){
  sliderValue = document.getElementById("slider").value;
  document.getElementById("maxValue").innerHTML = sliderValue;
  return sliderValue;
}

function filterMenuItem(item, sliderValue){
  priceValue = parseFloat(item.getElementsByClassName("price-value")[0].innerHTML);
  if (priceValue > sliderValue){
    item.style.visibility = 'hidden';
  }
}

function showMenuItems(items){
  Array.prototype.forEach.call(items, function(item){
    item.style.visibility = 'visible';
  });
}

function filterMenuItems(items, sliderValue){
  Array.prototype.forEach.call(items, function(item){
    filterMenuItem(item, sliderValue);
  });
}

function sliderChange(){
  sliderValue = updateSliderValue();
  items = document.getElementsByClassName("box");
  showMenuItems(items);
  filterMenuItems(items, sliderValue);
}

function toggleAddItem(){
  addItemDiv = document.getElementById("add-item");
  display = window.getComputedStyle(addItemDiv).display;
  shouldDisplay = display === 'none';
  addItemDiv.style.display = shouldDisplay ? "block" : "none";
}

function createNameSpan(name){
  nameSpan = document.createElement("span");
  nameSpan.innerHTML = name;
  nameSpan.className = "item-name";
  return nameSpan;
}

function createGroupSpan(group){
  groupSpan = document.createElement("span");
  groupSpan.innerHTML = group;
  groupSpan.className = "item-group";
  return groupSpan;
}

function createPriceValueSpan(price){
  priceValueSpan = document.createElement("span");
  priceValueSpan.innerHTML = price;
  priceValueSpan.className = "price-value";
  return priceValueSpan;
}

function createPriceSpan(price){
  priceValueSpan = createPriceValueSpan(price);
  priceSpan = document.createElement("span");
  priceSpan.className = "item-price";
  priceSpan.innerHTML = "$";
  priceSpan.appendChild(priceValueSpan);
  return priceSpan;
}

function createImageBox(imageSource){
  image = document.createElement("img");
  image.src = imageSource;
  image.className = "foodImg";

  imageBox = document.createElement("div");
  imageBox.className = "img-box"
  imageBox.appendChild(image);
  return imageBox;
}

function createNewItem(name, group, price, image="../images/item4.jpg"){
  newItem = document.createElement("div");
  imageBox = createImageBox(image);
  nameSpan = createNameSpan(name);
  groupSpan = createGroupSpan(group);
  priceSpan = createPriceSpan(price);

  newItem.className = "box";
  newItem.appendChild(imageBox);
  newItem.appendChild(nameSpan);
  newItem.appendChild(groupSpan);
  newItem.appendChild(priceSpan);
  return newItem;
}

function insertNewItem(){
  itemName = document.getElementById("new-item-name").value;
  itemGroup = document.getElementById("new-item-group").value;
  itemPrice = document.getElementById("new-item-price").value;
  //console.log(itemName + " / " + itemGroup + " / " + itemPrice);
  newItem = createNewItem(itemName, itemGroup, itemPrice);
  // newItem = document.createElement("div");
  foodContainer = document.getElementById("food-container");
  //console.log(newItem.tag);
  foodContainer.appendChild(newItem);
}

function onLoad (){

}
