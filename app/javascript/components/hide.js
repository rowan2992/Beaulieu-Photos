const toggleEditForm = () => {
  const hideBtn = document.getElementById("hide-btn");
  const editForm = document.getElementById('edit-form');
  hideBtn.addEventListener('click', (event) => {
    event.preventDefault();
    editForm.classList.toggle("hidden");
  });
};

export { toggleEditForm };
