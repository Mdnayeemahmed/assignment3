import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                //margin: EdgeInsets.fromLTRB(10,10,0,10),

                child: Image.network("https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/38938fb6-6121-44af-9049-32a81febae0c/air-max-97-premium-mens-shoes-vf75n4.png",fit: BoxFit.cover,)
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                //margin: EdgeInsets.fromLTRB(0,10,0,10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)
                  ),
                color: Colors.black12
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Nike Air Max Pre-Day",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10,top: 0,right: 10,bottom: 10),
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(
                            fontSize: 13,
                        ),
                      ),
                    ),
                    Center(child: ElevatedButton(onPressed: (){}, child: Text("Buy Now",)))
                  ],
                )
            ),
          ),

        ],
      ),
    );
  }
}
