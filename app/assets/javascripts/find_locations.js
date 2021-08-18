function findLocations() {
  var search = document.getElementById("search").value;
  var params = {
    query: search,
    key: "AIzaSyAcf1cJuw4-N0o12TMyL0VMypww9f1RUOk"
  };
  var locationList = document.getElementById('location');
  // locationList.disabled = false;
  locationList.innerHTML = '';
  var option = document.createElement('option');
  option.innerHTML = '店名を選択してください';
  option.defaultSelected = true;
  // option.disabled = true;
  locationList.appendChild(option);

  var query_params = new URLSearchParams(params);
  fetch(
    `https://maps.googleapis.com/maps/api/place/textsearch/json?${query_params}`,
    {mode: 'cors'}
  )
  .then(response=> response.json())
  .then(data=> data.results)
  .then(results=> {
    results.forEach(location=> {
      let option = document.createElement('option');
      option.innerHTML = location.name + location.formatted_address.replace(/日本、〒[0-9]{3}-[0-9]{4}/, "");
      locationList.appendChild(option);
    });
  })
};
