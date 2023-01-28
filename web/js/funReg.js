/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function resetearForm(){
    document.getElementById("formAlta").reset();
    var avisoPass = document.getElementById("avisoPass");
    
    avisoPass.innerHTML = "....";
}

function coincidirPass(){
    var txtPass = document.getElementById("txtPass");
    var txtRepPass = document.getElementById("txtRepPass");
    var avisoPass = document.getElementById("avisoPass");
    
    if(txtPass.value.length == 0 || txtRepPass.value.length == 0){
        avisoPass.innerHTML = "Ninguna contrasena puede quedar vacia";
        avisoPass.style.color = "blue";
    }else if (txtPass.value != txtRepPass.value){
        avisoPass.innerHTML = "Contrasenas no coinciden";
        avisoPass.style.color = "red";
    }else{
        avisoPass.innerHTML = "Contrasenas coinciden";
        avisoPass.style.color = "green";
    }
}