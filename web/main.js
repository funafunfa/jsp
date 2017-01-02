function validate() {
    var
        surname = document.getElementById("second_name"),
        firstname = document.getElementById("first_name"),
        bdate = document.getElementById("date"),
    tel = document.getElementById("tel"),
    email = document.getElementById("email"),
    country = document.getElementById("country"),
    city = document.getElementById("city"),
        district = document.getElementById("district");


    if (surname.value == "") {
        surname.style.backgroundColor = "red";
    } else {
        surname.style.backgroundColor = "write";
    }

    if (firstname.value == "") {
        firstname.style.backgroundColor = "red";
    } else {
        firstname.style.backgroundColor = "write";
    }

    if (username.value == "") {
        username.style.backgroundColor = "red";
    } else {
        username.style.backgroundColor = "write";
    }

    if (bdate.value == "") {
        bdate.style.backgroundColor = "red";
    } else {
        bdate.style.backgroundColor = "write";
    }

    if (tel.value == "") {
        tel.style.backgroundColor = "red";
    } else {
        tel.style.backgroundColor = "write";
    }

    if (email.value == "") {
        email.style.backgroundColor = "red";
    } else {
        email.style.backgroundColor = "write";
    }

    if (country.value == "") {
        country.style.backgroundColor = "red";
    } else {
        country.style.backgroundColor = "write";
    }

    if (city.value == "") {
        city.style.backgroundColor = "red";
    } else {
        city.style.backgroundColor = "write";
    }

    if (district.value == "") {
        district.style.backgroundColor = "red";
    } else {
        district.style.backgroundColor = "write";
    }
}