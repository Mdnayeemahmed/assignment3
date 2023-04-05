

import 'package:assignment3/page1.dart';
import 'package:assignment3/page2.dart';
import 'package:assignment3/page3.dart';
import 'package:assignment3/page4.dart';
import 'package:flutter/material.dart';

import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: welcome(),);
  }
}

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                  "https://drive.google.com/uc?export=view&id=1tz-LgeuCPGnstipg0S5EY441Og4QqDyO"),
                  fit: BoxFit.cover),
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [SafeArea(child:
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: buttonPrimary,
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainactivity()));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Get Start",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward,size: 20,color: Colors.black,)
                      ],
                    ))
              ],
            ),
          )
          )
          ],
        ),
      ),
        );
  }
}

Mysnackbar(context,msg){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Icon(Icons.notification_add_outlined,color: Colors.black,),
            Padding(padding: EdgeInsets.all(5)),
            Text(  msg,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
          ],
        )),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}

class mainactivity extends StatelessWidget {
  var myitem=[
    {"img":"https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/38938fb6-6121-44af-9049-32a81febae0c/air-max-97-premium-mens-shoes-vf75n4.png","tittle":"test1","price":"Tk.10,000"},
    {"img":"https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/019f60a9-aa10-4327-b5f6-b940b753fbdb/dunk-high-1985-shoes-L05QbB.png","tittle":"test2","price":"Tk.10,000"},
    {"img":"https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/871e12d6-9bb2-427c-a61c-686f8f4478fe/air-max-terrascape-97-mens-shoes-DCLQCN.png","tittle":"test3","price":"Tk.10,000"},
    {"img":"https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/38938fb6-6121-44af-9049-32a81febae0c/air-max-97-premium-mens-shoes-vf75n4.png","tittle":"test4","price":"Tk.10,000"}
  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child:Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome to Nike')),
      ),
      body: Column(
        children: [
          SizedBox(height:200,child:
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    child: Ink.image(image: NetworkImage("https://drive.google.com/uc?export=view&id=12XWlF5QeeWficzl-psf3zx3EklgsvgaE")
                    ,height: 200,fit: BoxFit.cover,),
                  ),
                  Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Text("New Release",style: TextStyle(color: Colors.black),),
                      Text("Nike Air",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                      Text("Max 90",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                      SizedBox(height: 5,),
                      ElevatedButton(onPressed: (){

                      }, child: Text("Shop Now"))
                    ],
                  ),)
                ],
              ),
            ),
          )
          ),
          Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
              Text("New Men's",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
                SizedBox(width: 120,),

            ],
          ),),
          SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
                itemCount: myitem.length,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      if(myitem[index]== myitem[0]) {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => page1()));
                      }else if(myitem[index]== myitem[1]){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => page2()));
                      }else if(myitem[index]== myitem[2]){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => page3()));
                      }else if(myitem[index]== myitem[3]){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => page4()));
                      }
                      },
                    child: Row(
                      children: [
                        Expanded(
                          flex:2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10,10,0,10),

                            child: Image.network(myitem[index]["img"]!,fit: BoxFit.cover,),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            //margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(myitem[index]["tittle"]!,style: TextStyle(
                                    fontSize: 25,fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(myitem[index]["price"]!,style: TextStyle(
                                      fontSize: 25,fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }

            ),
          )

        ],
      )
    ));
  }
}
