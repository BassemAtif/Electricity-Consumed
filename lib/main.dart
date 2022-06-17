import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "electricity",
      home: PageOne(),
    );
  }
}
class PageOne extends StatelessWidget{
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  TextEditingController n4 = TextEditingController();
  TextEditingController n5 = TextEditingController();

  Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(title: Text("ElECTRICITY")),
   body:ListView(
     children: [
       Container(padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
         child: TextField(
           controller: n1,
           decoration: InputDecoration(
             hintText: "Enter Your last Read",
             labelText: "Last",
               border: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(10),
               )
           ),
         ),
       ),
       Container(padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
         child: TextField(
           controller:n2,
           decoration: InputDecoration(
               hintText: "Enter Your current Read",
               labelText: "Current",
               border: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(10),
               )),),),
       Container(
         padding: EdgeInsets.all(10),margin: EdgeInsets.all(5),
         child: RaisedButton(
             child: Text("Check!"),
             onPressed: (){
               double price=0;
               double consumed=0;
               if(double.parse(n1.text.toString()) < double.parse(n2.text.toString()) ){
               consumed = double.parse(n2.text.toString()) - double.parse(n1.text.toString());
               n3.text = consumed.toString();

               if(consumed>=0 && consumed<=50){
                   price = consumed * 0.48;
                   n4.text = price.toString();
                   n5.text = "First Level";
                 }
                 else if(consumed>=51 && consumed<=100){
                   price = consumed * 0.58;
                   n4.text = price.toString();
                   n5.text = "Second Level";
                 }
                 else if(consumed>=101 && consumed<=200){
                   price = consumed * 0.77;
                   n4.text = price.toString();
                   n5.text = "third Level";
                 }
                 else if(consumed>=201 && consumed<=350){
                   price = consumed * 1.06;
                   n4.text = price.toString();
                   n5.text = "fourth Level";
                 }
                 else if(consumed>=351 && consumed<=650){
                   price = consumed * 1.28;
                   n4.text = price.toString();
                   n5.text = "Fifth Level";
                 }
                 else if(consumed>=651 && consumed<=1000){
                   price = consumed * 1.28;
                   n4.text = price.toString();
                   n5.text = "Sevent Level";
                 }
                 else if(consumed>1000 ){
                   price = consumed * 1.45;
                   n4.text = price.toString();
                   n5.text = "eigth Level";
                 }
               }
               else if(double.parse(n1.text.toString()) > double.parse(n2.text.toString())){
                 consumed = double.parse(n1.text.toString()) - double.parse(n2.text.toString());
                 n3.text = consumed.toString();

                 if(consumed>=0 && consumed<=50){
                   price = consumed * 0.48;
                   n4.text = price.toString();
                   n5.text = "First Level";
                 }
                 else if(consumed>=51 && consumed<=100){
                   price = consumed * 0.58;
                   n4.text = price.toString();
                   n5.text = "Second Level";
                 }
                 else if(consumed>=101 && consumed<=200){
                   price = consumed * 0.77;
                   n4.text = price.toString();
                   n5.text = "third Level";
                 }
                 else if(consumed>=201 && consumed<=350){
                   price = consumed * 1.06;
                   n4.text = price.toString();
                   n5.text = "fourth Level";
                 }
                 else if(consumed>=351 && consumed<=650){
                   price = consumed * 1.28;
                   n4.text = price.toString();
                   n5.text = "Fifth Level";
                 }
                 else if(consumed>=651 && consumed<=1000){
                   price = consumed * 1.28;
                   n4.text = price.toString();
                   n5.text = "Sevent Level";
                 }
                 else if(consumed>1000 ){
                   price = consumed * 1.45;
                   n4.text = price.toString();
                   n5.text = "eigth Level";
                 }
               }
               else{
                 n3.text = "YOU CONSUMED 0";
                 n4.text = "0.00";
                 n5.text = "First Level";
               }
             }),
       ),
       Container(padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
         child: TextField(
           controller: n3,
           decoration: InputDecoration(
               hintText: "Consumed :",
               labelText: "Consumed",
               border: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(10),
               )
           ),
         ),
       ),
       Container(padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
         child: TextField(
           controller:n4,
           decoration: InputDecoration(
               hintText: "your price",
               labelText: "Price(L.E)",
               border: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(10),
               )
           ),
         ),
       ),
       Container(padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
         child: TextField(
           controller:n5,
           decoration: InputDecoration(
               labelText: "Level(share7a)",
               border: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(10),
               )
           ),
         ),
       ),
     ],
   )
  );
  }
}