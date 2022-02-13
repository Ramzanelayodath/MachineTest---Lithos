import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              const SizedBox(height: 8,),
              menu(),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.only(topLeft :Radius.circular(25),topRight: Radius.circular(25))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('New Arrivals',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('View All'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurpleAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), // <-- Radius
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      SizedBox(
                        width: double.infinity,
                        height: 275,
                        child:  itemList(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ));

  }

  Widget header(){
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height /2,
      child:  Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(bottomLeft : Radius.circular(40),bottomRight: Radius.circular(40))
            ),
            height: MediaQuery.of(context).size.height / 2.5,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/8,
                ),
                Padding(padding: const EdgeInsets.all(8),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Text('SHOPIN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                      Container(
                          width: 150,
                          height: 55,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.search,color: Colors.black54,size: 23,),
                              Padding(padding: EdgeInsets.all(8),
                                child: Text('Search',style: TextStyle(color: Colors.black54,fontSize: 18),),)
                            ],
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child:  Container(
                          width: 50,
                          height: 55,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: const Center(
                            child: Icon(Icons.camera_alt),
                          ),
                        ),)
                    ],
                  ),)
              ],
            ),
          ),
          Positioned(
            child:banner(),top: 225,left: 30,right: 30,),

        ],
      ),
    );
  }

  Widget banner(){
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width/1,
        height: MediaQuery.of(context).size.height/5,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),

        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset('assets/images/nike.png',width: 125,),
              Padding(
                padding:const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    const Text('Introducing',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                    const SizedBox(height: 8,),
                    const Text('Air Max 2090',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                    const SizedBox(height: 5,),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Buy Now'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // <-- Radius
                        ),
                      ),
                    )
                  ],
                ),)
            ],
          ),
        ),
      ),
    );
  }

  Widget menu(){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(
                    color: Color(0xFFFCE4EC),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: const Center(
                  child: Icon(
                      Icons.camera
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              const Text('Category',style: TextStyle(fontSize: 14,color: Colors.black),),
            ],
          ),
          Column(
            children: [
              Container(
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFCE4EC),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child:  const Center(
                    child: Icon(
                        Icons.camera
                    ),

                  )),
              const SizedBox(height: 8,),
              const Text('Compare',style: TextStyle(fontSize: 14,color: Colors.black),),
            ],
          ),
          Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(
                    color: Color(0xFFFCE4EC),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child:  const Center(
                  child: Icon(
                      Icons.camera
                  ),

                ),
              ),
              const SizedBox(height: 8,),
              const Text('Sale event',style: TextStyle(fontSize: 14,color: Colors.black),),

            ],
          ),
          Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(
                    color: Color(0xFFFCE4EC),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child:  const Center(
                  child: Icon(
                      Icons.camera
                  ),

                ),
              ),
              const SizedBox(height: 8,),
              const Text('Offers',style: TextStyle(fontSize: 14,color: Colors.black),)
            ],
          )
        ],
      ),
    );
  }

  Widget itemList(){
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width:  160,
          height: 275,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width:  160,
                  height: 135,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.favorite_border),
                        ),
                      ),
                      Image.asset('assets/images/nike.png')
                    ],
                  ),
                ),
              ),
              const Text('Nike Air Max 250',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 60,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: const Text('7 Colors'),
                  ),
                ),),
              Padding(
                padding:const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$150',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: const Center(
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),)
            ],
          ),
        ),);
    },
      itemCount: 10,
      scrollDirection: Axis.horizontal,);
  }
}
