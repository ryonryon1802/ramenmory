function findStores() {
  var search = document.getElementById("search").value;
  var params = {
    query: search,
    key: gon.google_api_key
  };
  var storeList = document.getElementById('select_store');
  storeList.innerHTML = '';
  var option = document.createElement('option');
  option.innerHTML = '店名を選択してください';
  option.defaultSelected = true;
  storeList.appendChild(option);

  var query_params = new URLSearchParams(params);
  fetch(
    `https://maps.googleapis.com/maps/api/place/textsearch/json?${query_params}`,
    {mode: 'cors'}
  )
  .then(response=> response.json())
  .then(data=> data.results)
  .then(results=> {
    results.forEach(store=> {
      let option = document.createElement('option');
      option.innerHTML = store.name + "," + store.formatted_address.replace(/日本、〒[0-9]{3}-[0-9]{4}/, "");
      storeList.appendChild(option);
    });
  })
};