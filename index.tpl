<!DOCTYPE html>
<html lang="is"> 
  <head>
    <title>Dominos.is</title>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="/Myndir/favicon-32x32.png" />
  </head>
  <style>
    body{
      background-image: url("/Myndir/Dominos.png");
      background-repeat: no-repeat;
      background-size: 1280px 800px;
    }

  </style>
  <body>
  <form method='get' action='/data' accept-charset="ISO-8859-1">

      <h2>Upplýsingar um notandann</h2>
      Nafn:<br>
      <input type="text" name='nafn' required=""><br>
      Heimilisfang:<br>
      <input type="text" name='heimilisfang' required=""><br>
      Netfang:<br>
      <input type="Email" name='netfang' required=""><br>
      Símanúmer:<br>
      <input type="text" name='símanúmer' pattern="[0-9-]{7,8}" required=""><br>

      <h2>Pizzastærð</h2>
      <h4>Hvað stærð má bjóða þér?</h4>
      <input type="radio" name='stærð' value="9tomma">9 Tomma - 1000 kr<br>
      <input type="radio" name='stærð' value="12tomma">12 Tomma - 1500 kr<br>
      <input type="radio" name='stærð' value="18tomma">18 Tomma - 2000 kr<br>
      
      <h2>Val um álegg</h2>
      <h4>Hvað álegg má bjóða þér?</h4>
      <h4>Hvert álegg kostar 200kr</h4>
      <input type="checkbox" name='álegg' value="Skinka"> Skinka<br>
      <input type="checkbox" name='álegg' value="Pepperoni"> Pepperoni<br>
      <input type="checkbox" name='álegg' value="Ananas"> Ananas<br>
      <input type="checkbox" name='álegg' value="Rjómaostur"> Rjómaostur<br>
      <input type="checkbox" name='álegg' value="hakk">hakk<br>
      <input type="checkbox" name='álegg' value="sveppir">sveppir<br>
      <br>
      <input type='submit' value='Panta'>
      <input type='reset' value='Hreinsa'>
  </form>    
  </body>
</html>
