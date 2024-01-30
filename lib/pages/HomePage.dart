import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(image: AssetImage('assets/images/amazon_logo.png'),
              width: 100,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: (){},
                 icon: const Icon(Icons.mic,color: Colors.white,),
                ),
                IconButton(onPressed: (){},
                    icon: const Icon(Icons.shopping_cart_sharp,color: Colors.white,),
                )
              ],
            )
          ],
        )
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            //Search
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10, bottom: 10),
              height: 50,
              color:const Color (0xFF018197),
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, size: 20,color: Color (0xFF018197),),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
                        hintText: 'What are you looking for?'
                      ),
                    ),
                    ),
                    IconButton(onPressed: (){},
                        icon: const Icon(Icons.camera_alt,color: Color (0xFF018197)))
                  ],
                ),
              ),
            ),

            //body
            Expanded(
                child: ListView(
                  children: [
                    //Location
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 45,
                     color: Colors.blueGrey,
                      child:const Row(
                       children: [Icon(CupertinoIcons.location_solid, color: CupertinoColors.white,
                       ),
                       Text('Deliver to Uzbekistan, Republic of',
                         style: TextStyle(color: CupertinoColors.white, fontSize: 11),
                       )
                     ],
                   ) ,
                  ),

                    //reklama
                    Container(
                      height: 140,
                      color: Colors.white,
                      child: Row(
                        children: [Container(
                          width: 170,
                          padding: const EdgeInsets.all(20),
                          child: const Text('We ship 45million products',style: TextStyle(color: CupertinoColors.black,fontSize: 12),),
                        ),
                          Expanded(child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/image_1.jpeg')
                              ),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(70),bottomLeft: Radius.circular(70))
                            ),
                              child: Container(),
                          ),
                          ),
                     ],
                   ) ,
                  ),

                    const SizedBox(height: 8),

                    //Sign in
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: 160,
                      color: CupertinoColors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Sign for in the best experience',
                            style: TextStyle(color: CupertinoColors.black,fontSize: 14),
                          ),
                          MaterialButton(
                            height: 50,
                            minWidth: double.infinity,
                            color: Colors.orange,
                            child:const Text('Sign in') ,
                              onPressed: (){},
                          ),
                          const Text('Create an account ',style: TextStyle(color: Colors.lightBlueAccent),)
                        ],
                      ),
                    ),

                  const SizedBox(height: 8),

                    //shopping
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: CupertinoColors.white,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deal of the Day', style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 10),

                          Image(image: AssetImage('assets/images/item_7.jpeg'),
                            height: 240,
                            width: double.infinity,
                            fit: BoxFit.cover,),
                          SizedBox(height: 10),

                          Text('Up to 31% off APC UPS Battery Back', style: TextStyle(fontSize: 13),),
                          Text('\$10.99 - \$79.9', style: TextStyle(fontSize: 13),),

                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    //Best shopping
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: CupertinoColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Best sellers in Electronics',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            height: MediaQuery.of(context).size.width,
                            child:GridView.count(
                              childAspectRatio: 1.1/1,
                              scrollDirection: Axis.horizontal,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              crossAxisCount: 2,
                              children: const [
                                Image(image: AssetImage('assets/images/item_7.jpeg'),fit: BoxFit.cover,),
                                Image(image: AssetImage('assets/images/item_5.jpeg'), fit: BoxFit.cover,),
                                Image(image: AssetImage('assets/images/item_6.jpeg'), fit: BoxFit.cover,),
                                Image(image: AssetImage('assets/images/item_4.jpeg'), fit: BoxFit.cover,),
                              ],
                            ) ,
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    //Top shopping
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: CupertinoColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Top products in Camera',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            height: MediaQuery.of(context).size.width,
                            child:GridView.count(
                              childAspectRatio: 1/1.85,
                              scrollDirection: Axis.horizontal,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              crossAxisCount: 2,
                              children: [
                                const Image(image: AssetImage('assets/images/item_7.jpeg'),fit: BoxFit.cover,),
                                GridView.count(
                                  mainAxisSpacing: 5,
                                  childAspectRatio: 1.1,
                                  crossAxisCount: 1,
                                  scrollDirection: Axis.horizontal,
                                  children: const [Image(image: AssetImage('assets/images/item_3.jpeg'), fit: BoxFit.cover,),
                                    Image(image: AssetImage('assets/images/item_2.jpeg'), fit: BoxFit.cover,),],
                                ),

                              ],
                            ) ,
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 10,),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
