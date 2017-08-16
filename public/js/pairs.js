function addinputFields(){
    var span = document.createElement("span");
    span.innerHTML = "<br>"

    var number = document.getElementById("student").value;

    document.getElementById("demo").innerHTML = "Enter names in the boxes below."

    for (var i=0; i<number; i++){
        var input = document.createElement("input");
        input.type = "text";
        input.placeholder = "Enter name";
        input.required = true;
        input.name = "text" + i;
        input.id = "studentname";
        document.getElementById("demo").appendChild(input).value;
        var submit = document.createElement("submit");
    }
}