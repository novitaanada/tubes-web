const name = document.getElementById('username')
const password = document.getElementById('pass')

login.addEventListener('submit', (e) => {
    if (name.value === '' || name.value == null) {
        alert('username harus di isi')
    }

    if(length(nama.value)<=6){
    	alert('username harus lebih dari 6')
    }


    if (alamat.value === '' || pass.value == null) {
        alert('password harus di isi')

    if (messages.length > 0) {
        e.preventDefault()
    }
})