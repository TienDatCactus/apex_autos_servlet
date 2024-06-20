window.addEventListener("DOMContentLoaded", (event) => {
  // Simple-DataTables
  // https://github.com/fiduswriter/Simple-DataTables/wiki
  const cate = document.getElementById("cateTable");
  if (cate) {
    new simpleDatatables.DataTable(cate);
  }
  const brand = document.getElementById("brandTable");
  if (brand) {
    new simpleDatatables.DataTable(brand);
  }
  const datatablesSimple = document.getElementById("datatablesSimple");
  if (datatablesSimple) {
    new simpleDatatables.DataTable(datatablesSimple);
  }
});
