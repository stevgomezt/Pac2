document.addEventListener("DOMContentLoaded", function () {
  const table = document.querySelector(".table");
  const sortableColumns = table.querySelectorAll(".sortable");

  sortableColumns.forEach((column) => {
    column.addEventListener("click", function () {
      const rows = Array.from(table.tBodies[0].querySelectorAll("tr"));
      const columnIndex = Array.from(this.parentNode.children).indexOf(this);
      let isAscending = this.classList.contains("ascending");

      rows.sort((a, b) => {
        const aValue = a.cells[columnIndex].innerText;
        const bValue = b.cells[columnIndex].innerText;
        return isAscending
          ? aValue.localeCompare(bValue)
          : bValue.localeCompare(aValue);
      });

      rows.forEach((row) => table.tBodies[0].removeChild(row));
      rows.forEach((row) => table.tBodies[0].appendChild(row));

      sortableColumns.forEach((col) => {
        col.classList.remove("ascending", "descending");
        const icon = col.querySelector("i");
        icon.classList.remove("fa-sort-down", "fa-sort-up");
        icon.classList.add("fa-sort");
      });

      if (isAscending) {
        this.classList.add("descending");
        const icon = this.querySelector("i");
        icon.classList.remove("fa-sort");
        icon.classList.add("fa-sort-down");
      } else {
        this.classList.add("ascending");
        const icon = this.querySelector("i");
        icon.classList.remove("fa-sort");
        icon.classList.add("fa-sort-up");
      }
    });
  });
});
