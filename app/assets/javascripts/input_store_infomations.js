function inputStoreInfomations() {
  var select_store = document.getElementById('select_store').value
  document.getElementById("store").value = select_store.replace(/, .*/, "");
  console.log(select_store.replace(/, .*/, ""));
  document.getElementById("location").value = select_store.replace(/^.*, /, "");
};
