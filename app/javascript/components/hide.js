const toggleEditForm = () => {
  const hideBtn = document.getElementById("hide-btn");
  const editForm = document.getElementById('edit-form');
  const trashBtn = document.querySelectorAll('.trash-btn');
  if(hideBtn){
    hideBtn.addEventListener('click', (event) => {
      event.preventDefault();
      editForm.classList.toggle("hidden");
      trashBtn.forEach((button) => {
        button.classList.toggle("hidden");
      });
    });
  }
};

export { toggleEditForm };
