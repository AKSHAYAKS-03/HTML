<!--1. Create a web page with a button and a heading, and add the following functionality:
• When the button is clicked, change the text of the heading to say "Hello,
World!".
• When the button is clicked again, change the text of the heading back to its
original text-->
<!DOCTYPE html>
<title>Button Click</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
  .container {
    text-align: center;
    margin-top: 50px;
  }
</style>
</head>
<body>

<div class="container">
  <h1 id="heading">Original Text</h1>
  <button id="changeButton">Click me</button>
</div>

<script>
var str = $("#heading").text() ;
  $(document).ready(function() {
    $("#changeButton").click(function() {

      if ($("#heading").text() === str) {
        $("#heading").text("Hello, World!");
      } else {
        $("#heading").text(str);
      }
    
    });
  });
</script>
</body>
</html>
