import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  //html script:
  static String samplehtml = '''
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adjustment2</title>
    <style>
    body {
    margin: 0;
    font-family: Arial, sans-serif;
    display: flex;
    height: 100vh;
}

.main-container {
    display: flex;
    width: 100%;
}
.searchbar{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%; 
    height: 10vh;
    background-color: rgb(1, 191, 254);
    color: rgb(255, 255, 255);
    padding: 25px;
    box-sizing: border-box;
    border-radius: 500px;
}

.container img{
    width: 200px;
    transform: translate(-20%,-50%);
}
.searchbar img{
    background-color:transparent;
    width: 50px;
    transform: translate(50%,-25%);
}

.heading #go1,#go2{
    filter: invert(100%);
}
.heading #go1{
    transform: translate(0%,-180%);
   /* transform: scaleX(-1);*/
}
.heading #go2 {
    transform: translate(235%,-180%) scaleX(-1);
} 

.heading #welcome{
    height: 155px;
    width: 35%;
    transform: translate(-40%,-15%);
    border-radius: 10px;
}

.heading {
    position: absolute;
    top: 10%;
    left: 0;
    width: 100%; 
    height: 20vh;
    color: rgb(0, 0, 0);
    padding: 25px;
    box-sizing: border-box;
}

.container {
    height: 10px;
    width: 100px; /*  */
    padding: 60px;
    background-color: lightcyan;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    transform:translate(0%,250%);
}

.content {
    /*flex-direction: column;*/
    width: 100%;
    margin-top: 200px;
    height: 100%;
    position: relative;
    display: grid;
    grid-template-columns: 1fr 4fr;
    box-shadow: 0 35px 55px rgba(0, 0, 0, 0.1);
}
.left_container{
    background-color: white;
    padding: 50px;
    position: sticky;
}
/**/
.left_container {
    margin: 20px auto;
  }

.left_container img {
    top: 0;
    position: sticky;
  }

/**/

.right_container{
    position: relative;
    background-color: white;
    padding: 20px;
}


table {
    width: 1125px;
/* border-collapse: collapse;*/
}
th{
  background-color: #f2f2f2;
  font-weight: bold;
}
tr:nth-child(even) {
    background-color: #f9f9f9cf;
}
tr:nth-child(odd) {
    background-color: #ffffff;
}
table, th, td {
    border: 1px solid #ddd;
    padding: 25px;
}
    </style>
</head>
<body>
    <div class="main-container">   
    <div class="searchbar">
        <img src="search.jpg" alt="box">
    </div>
    <div class="heading">
        <img src="left.png" id = "go1">
        <img src="left.png" id = "go2">
       <img src="welcome.jpeg" id = 'welcome'alt="welcome">
    </div>
    <div class="content">
      <div class="left_container">
       <img src="box.jpeg" alt="box">
      </div>
      <div class="right_container">
     <!--  -->
     <table>
      <tr>
        <th>Name</th>
        <th>Reg No</th>
        <th>Grade</th>
      </tr>
      <tr>
        <td>Allu</td>
        <td>C015</td>
        <td>O</td>
      </tr>
      <tr>
        <td>AthiAA</td>
        <td>C017</td>
        <td>O</td>
      </tr>
      <tr>
        <td>AS</td>
        <td>15</td>
        <td>A</td>
      </tr>
      <tr>
        <td>AT</td>
        <td>17</td>
        <td>A</td>
      </tr>
    <!-- -->
    <tr>
        <td>Allu</td>
        <td>C015</td>
        <td>O</td>
      </tr>
      <tr>
        <td>AthiAA</td>
        <td>C017</td>
        <td>O</td>
      </tr>
      <tr>
        <td>Allu</td>
        <td>C015</td>
        <td>O</td>
      </tr>
      <tr>
        <td>AthiAA</td>
        <td>C017</td>
        <td>O</td>
      </tr>
    <!--  -->
    <tr>
        <td>Aswini</td>
        <td>15</td>
        <td>O</td>
        </tr>
      <tr>
        <td>Sneha</td>
        <td>C015</td>
        <td>A</td>
      </tr>
      <tr>
        <td>AlluArjun</td>
        <td>17</td>
        <td>A</td>
      </tr>
    </table>
      </div>
   
<!-- -->
    </div>
    </body>
</div>
</body>
</html>
  ''';

  final controller =WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled) //.. ->  casket notation : allows change multiple methods call on same obj.
  ..loadRequest(Uri.parse('https://www.mongodb.com/'));
  //..loadHtmlString(samplehtml);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('WebPage_MobileView',style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}
