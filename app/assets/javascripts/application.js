html, body {
  margin: 0;
  padding: 0;
  background: White;
  color: DarkSlateGrey;
  font-family: Tahoma, Verdana, sans-serif;
  font-size: 10pt;
}
div#main {
  margin: 0;
  padding: 0 20px 20px;
}
a {
  background: transparent;
  color: maroon;
  text-decoration: underline;
  font-weight: bold;
}
h1 {
  color: maroon;
  font-size: 150%;
  font-style: italic;
  display: block;
  width: 100%;
  border-bottom: 1px solid DarkSlateGrey;
}
h1.title {
  margin: 0 0 1em;
  padding: 10px;
  background-color: orange;
  color: white;
  border-bottom: 4px solid gold;
  font-size: 2em;
  font-style: normal;
}
table#movies {
  margin: 10px;
  border-collapse: collapse;
  width: 100%;
  border-bottom: 2px solid black;
}
table#movies th {
  border: 2px solid white;
  font-weight: bold;
  background-color: wheat;
}
table#movies th, table#movies td {
  padding: 4px;
  text-align: left;
}
#notice #warning {
  background: rosybrown;
  margin: 1em 0;
  padding: 4px;
}
form label {
  display: block;
  line-height: 25px;
  font-weight: bold;
  color: maroon;
}

table#movies th.hilite {
  background-color: yellow;
}