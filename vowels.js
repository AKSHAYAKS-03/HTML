<!-- Write a JQuery script to count the number of vowels in a string. Get the string input
through a textbox.-->
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
function func(){
var string = document.getElementById("txt").value;
var count = string.match(/[aeiou]/gi).length;
document.getElementById("ans").innerHTML = count;
}
</script>
</head>
<body>
<p>count the number of vowels in a string.</p>
<input type="text" id="txt"><br><br>
<button onclick="func()" >count vowels</button><br><br>
<label>The number of vowels in a string: </label><label id ="ans"></label>
</body>
</html>
