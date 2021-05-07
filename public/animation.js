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
