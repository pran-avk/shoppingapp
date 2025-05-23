import 'package:flutter/material.dart';


import 'package:shoppingapp/Rotatingimage/rotatingimage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final List<Map<String, String>> fruits = [
    {'name': 'Apple', 'url': 'https://upload.wikimedia.org/wikipedia/commons/1/15/Red_Apple.jpg'},
    {'name': 'Banana', 'url': 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Banana-Single.jpg'},
    {'name': 'Orange', 'url': 'https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg'},
    {'name': 'Strawberry', 'url': 'https://upload.wikimedia.org/wikipedia/commons/2/29/PerfectStrawberry.jpg'},
    {'name': 'Pineapple', 'url': 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Pineapple_and_cross_section.jpg'},
    {'name': 'Watermelon', 'url': 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Watermelon_cross_BNC.jpg'},
    {'name': 'Mango', 'url': 'https://upload.wikimedia.org/wikipedia/commons/9/90/Hapus_Mango.jpg'},
    {'name': 'Grapes', 'url': 'https://upload.wikimedia.org/wikipedia/commons/3/36/Kyoho-grape.jpg'},
    {'name': 'Cherry', 'url': 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Cherry_Stella444.jpg'},
    {'name': 'Kiwi', 'url': 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Kiwi_aka.jpg'},
    {'name': 'Peach', 'url': 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Nectarine_and_cross_section02_edit.jpg'},
    {'name': 'Pear', 'url': 'https://upload.wikimedia.org/wikipedia/commons/e/e1/Asian_Pear_2009-01-01.jpg'},
    {'name': 'Lemon', 'url': 'https://upload.wikimedia.org/wikipedia/commons/f/fc/Lemon-edit1.jpg'},
    {'name': 'Coconut', 'url': 'https://upload.wikimedia.org/wikipedia/commons/9/97/Coconut_cross_section.jpg'},
    {'name': 'Melon', 'url': 'https://upload.wikimedia.org/wikipedia/commons/e/e1/Cantaloupe_and_cross_section.jpg'},
    {'name': 'Tomato', 'url': 'https://upload.wikimedia.org/wikipedia/commons/8/88/Bright_red_tomato_and_cross_section02.jpg'},
    {'name': 'Papaya', 'url': 'https://upload.wikimedia.org/wikipedia/commons/5/54/Papaya_cross_section_BNC.jpg'},
    {'name': 'Dragon Fruit', 'url': 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Hylocereus_undatus_1zz.jpg'},
    {'name': 'Blueberry', 'url': 'https://upload.wikimedia.org/wikipedia/commons/1/12/Blueberries_&_Cross_section02_edit.jpg'},
    {'name': 'Cantaloupe', 'url': 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Cantaloupe_and_cross_section.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ShopEase',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 28,
                      fontFamily: 'PoetsenOne',
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const Row(
                        children: [
                          Icon(Icons.search_rounded),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Search',
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.only(bottom: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.person),
                        SizedBox(width: 10),
                        Text(
                          'Profile',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.shopping_cart),
                        SizedBox(width: 10),
                        Text(
                          'Cart',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.store_mall_directory_rounded),
                        SizedBox(width: 10),
                        Text(
                          'Become a seller',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Scrollable image row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://ik.imagekit.io/jyxcfhgon/flutter/20250523_2033_Fruit%20Salad%20Delight_simple_compose_01jvytkxx1f5wb9p6b0dmk5883.png?updatedAt=1748013427688',
                        width: 224,
                        height: 336,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 50),

                    // Rotating images in the middle
                    SizedBox(
                      width: 504,
                      height: 336,
                      child: const RotatingImageRow(),
                    ),

                    const SizedBox(width: 50),

                    // Right Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://ik.imagekit.io/jyxcfhgon/flutter/20250523_2048_Fruit%20Salad%20Packet_simple_compose_01jvyvfrefe6vs9cecsf4n87h0.png?updatedAt=1748013967612',
                        width: 224,
                        height: 336,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fruits List',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 500, // fixed height container for grid
                child: GridView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: fruits.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 16, // horizontal space between tiles
                    mainAxisSpacing: 16, // vertical space between tiles
                    childAspectRatio: 3 / 2, // width / height ratio of each tile
                  ),
                  itemBuilder: (context, index) {
                    final fruit = fruits[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16), // rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            child: Image.network(
                              fruit['url']!,
                              width: 100,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              fruit['name']!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
