import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.widget.dart';

class UsersPage extends StatefulWidget{
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  String query="";
  bool notVisible=false;

  TextEditingController queryTextEdidingController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text('Home => $query'),),
      body:Center(
        child: Column(
          children: [
           Row(
             children: [
               Expanded(
                 child: Container(
                     padding: EdgeInsets.all(10),
                     child: TextField(
                       obscureText: notVisible,
                       onChanged: (value){
                         setState(() {
                           this.query=value;
                         });
                       },
                       controller: queryTextEdidingController,
                       decoration: InputDecoration(
                           suffixIcon:IconButton(
                             onPressed: (){
                               setState(() {
                                 notVisible=!notVisible;
                               });
                             },
                             icon:Icon(
                               notVisible==true?Icons.visibility_off:Icons.visibility
                             )
                           ),
                           contentPadding: EdgeInsets.only(left: 20),
                           border: OutlineInputBorder(
                               borderRadius:BorderRadius.circular(50),
                               borderSide: BorderSide(
                                   width: 1,color: Colors.deepOrange
                               )
                           )
                       ),
                     )
                 ),
               ),
               IconButton(icon:Icon(Icons.search,color: Colors.deepOrange,),
                 onPressed: () {
                 setState(() {
                   this.query=queryTextEdidingController.text;
                 });
                 },
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}