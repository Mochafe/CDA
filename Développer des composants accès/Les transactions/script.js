let pu = window.prompt("Prix unitaire");
let QTECOM = window.prompt("Quantité");
let TOT = pu * QTECOM;
let remis;
alert("pu = " + pu + "/QTECOM= " + QTECOM);

console.log("PU =" + pu + "/QTECOM=" + QTECOM);
if (TOT > 99 && TOT < 201) {
    remis = TOT * 0.05;
    TOT = TOT - remis;
    alert("remise 5% (" + remis + ") = " + TOT);


}

if (TOT > 200) {
    remis = TOT * 0.1;
    TOT = TOT - remis;
    console.log("remis 10%");
}

let port = 0;

if (TOT < 500) {
    port = TOT * 0.02;
}

if (port < 6 && TOT < 500) {
    port = 6;
}



TOT = TOT + port;


console.log("Le port est de :" + port + "€");


console.log("Prix à payer = " + TOT + "€");