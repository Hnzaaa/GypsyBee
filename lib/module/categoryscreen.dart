// import 'dart:convert';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/categoryscreen/bloc/category_bloc.dart';
import 'package:gypsybee/module/gamescreen.dart';
import 'package:gypsybee/module/homescreen.dart';
import 'package:gypsybee/module/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'drawerscreen.dart';
import 'itemscreen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selectedItemIndex = 0;
  CategoryBloc newbloc = CategoryBloc();
  @override
  void initState() {
    newbloc = BlocProvider.of<CategoryBloc>(context);
    newbloc.add(const FetchCategoryEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Scaffold(
      endDrawer: const DrawerScreen(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child:   Center(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    labelText: 'Search ',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
        ),
        actions: [
          Builder(
            builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.menu_rounded,
                    size: 40,
                  ),
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: SingleChildScrollView(
          child: Padding(
           padding: const EdgeInsets.only(left: 10),
           child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
               children: [
                spacer(height: 40),
                const Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),textAlign: TextAlign.left,),
                spacer(height: 25),
                SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [
                    Column(
                      children: const [
                        Icon( Ionicons.woman_outline, color: Colors.orange, size: 30, ),
                        Text( 'Women', style: TextStyle(color: Colors.black, fontSize: 13), ),
                      ],
                    ),
                    const SizedBox(width: 4),
                    Column(
                      children: const [
                        Icon(Ionicons.man_outline,color: Colors.orange,size: 30,),
                        Text('Men',style: TextStyle(color: Colors.black, fontSize: 13),),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        Icon(Ionicons.bicycle_outline,color: Colors.orange,size: 30,),
                        Text('Electronics',style: TextStyle(color: Colors.black, fontSize: 13),),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        Icon(Ionicons.book_outline,color: Colors.orange,size: 30,),
                        Text('Hobbies',style: TextStyle(color: Colors.black, fontSize: 13),),
                      ],
                    ),
                    const SizedBox(width: 6),
                    Column(
                      children: const [
                        Icon(Ionicons.tv_outline,color: Colors.orange,size: 30,),
                        Text('Accessories',style: TextStyle(color: Colors.black, fontSize: 13),),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Icon(Ionicons.phone_landscape_outline,color: Colors.orange,size: 30,),
                        Text('Mobiles',style: TextStyle(color: Colors.black, fontSize: 13),),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Icon(Ionicons.alarm_outline,color: Colors.orange,size: 30,),
                        Text('More',style: TextStyle(color: Colors.black, fontSize: 13),),
                      ],
                    )
                  ],
                ),
               ),
               spacer(height: 35),
               const Text('Best Selling',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 20,),),
               //Grid
               BlocBuilder<CategoryBloc, CategoryState>(
                builder: (BuildContext context, state) { 
                  // return FutureBuilder(
                  //     future: Repository()
                  //         .getcategoryab(url: 'https://dummyjson.com/products'),
                  //     builder: (BuildContext context,
                  //         AsyncSnapshot<Categorymodel> snapshot) {
                        if (state is CategoryLoaded) {   
                          return Container(
                            height: MediaQuery.of(context).size.height,
                            width: 500,
                            child: GridView.builder(
                              itemCount: state.categorymodel.products!.length,
                              scrollDirection: Axis.vertical,
                              gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: MediaQuery.of(context).size.width /(MediaQuery.of(context).size.height / 2),
                              ),
                              itemBuilder: (BuildContext context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Itemscreen(
                                                  image: (state.categorymodel.products![index].images?[0]).toString(),
                                                  title: (state.categorymodel.products![index].title).toString(),
                                                  price: (state.categorymodel.products![index].price).toString(),
                                                  brand: (state.categorymodel.products![index].brand).toString(),
                                                )));
                                   },
                                   child: CategoryWidget().categorygrid(
                                      image: (state.categorymodel.products![index].thumbnail).toString(),
                                      title: (state.categorymodel.products![index].title).toString(),
                                      brand: (state.categorymodel.products![index].brand).toString(),
                                      price: (state.categorymodel.products![index].price).toString()),
                                );
                              },
                            ),
                          );
                        } else {
                          return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: .9,
                            color: Colors.black,
                          ),
                        );
                        }
                      // });
                },
               ),
               spacer(height: 60),
              ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gamescreen()));
                },
                child: const Icon(
                  Icons.shopping_bag,
                ),
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Icon(Icons.home)),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Itemscreen()));
                  },
                  child: const Icon(Icons.settings_input_component_sharp)),
              label: '',
            ),
          ],
          currentIndex: selectedItemIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            setState(() {
              selectedItemIndex = index;
            });
          }),
    );
  }
}
