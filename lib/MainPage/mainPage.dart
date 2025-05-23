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
    {'name': 'Watermelon', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/water.jpg?updatedAt=1748019023638'},
    {'name': 'Mango', 'url': 'https://upload.wikimedia.org/wikipedia/commons/9/90/Hapus_Mango.jpg'},
    {'name': 'Grapes', 'url': 'https://upload.wikimedia.org/wikipedia/commons/3/36/Kyoho-grape.jpg'},
    {'name': 'Cherry', 'url': 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Cherry_Stella444.jpg'},
    {'name': 'Kiwi', 'url': 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Kiwi_aka.jpg'},
    {'name': 'Peach', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/peach.jpg?updatedAt=1748019023509'},
    {'name': 'Pear', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/pear.jpg?updatedAt=1748019023905'},
    {'name': 'Lemon', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/lemon.jpg?updatedAt=1748019023443'},
    {'name': 'Coconut', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/coco.jpg?updatedAt=1748019024101'},
    {'name': 'Melon', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/melon.jpg?updatedAt=1748019023381'},
    {'name': 'Tomato', 'url': 'https://upload.wikimedia.org/wikipedia/commons/8/88/Bright_red_tomato_and_cross_section02.jpg'},
    {'name': 'Papaya', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/papaya.jpg?updatedAt=1748019023899'},
    {'name': 'Dragon Fruit', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/dragon.jpg?updatedAt=1748019024111'},
    {'name': 'Blueberry', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/OIP.jpg?updatedAt=1748019024106'},
    {'name': 'Cantaloupe', 'url': 'https://ik.imagekit.io/jyxcfhgon/flutter/cantaloupe.jpg?updatedAt=1748019023908'},
  ];

  @override
  Widget build(BuildContext context) {
    // Reduced grid item size to shrink horizontal space
    final double gridItemSize = 30;

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
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Scrollable image row with three sections
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

              // Fruits List Title
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fruits List',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              // Fruits GridView with reduced size images and reduced spacing horizontally
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), // prevent inner scroll
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10, // reduced vertical spacing a bit
                  crossAxisSpacing: 10, // reduced horizontal spacing a bit
                  childAspectRatio: 1,
                ),
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  final fruit = fruits[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitDetailPage(
                            fruitName: fruit['name']!,
                            fruitImageUrl: fruit['url']!,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          fruit['url']!,
                          width: gridItemSize,
                          height: gridItemSize,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitDetailPage extends StatefulWidget {
  final String fruitName;
  final String fruitImageUrl;

  const FruitDetailPage({
    super.key,
    required this.fruitName,
    required this.fruitImageUrl,
  });

  @override
  State<FruitDetailPage> createState() => _FruitDetailPageState();
}

class _FruitDetailPageState extends State<FruitDetailPage> {
  double quantity = 1.0; // quantity in kg

  void incrementQuantity() {
    setState(() {
      quantity += 0.5;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0.5) {
        quantity -= 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.network(
              'https://ik.imagekit.io/jyxcfhgon/flutter/20250523_2145_Blue%20Fruit%20Basket_simple_compose_01jvyytb2sezcrtgrqkaat9vte.png?updatedAt=1748016957976',
              fit: BoxFit.cover,
            ),
          ),

          // White overlay with 80% opacity for lighter background
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.8),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                children: [
                  // Back button
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black87),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Fruit Image and info + button in a row, aligned center vertically
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Fruit Image on left center
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            widget.fruitImageUrl,
                            height: 280,
                            width: 280,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(width: 40),

                        // Info and Buy section on right center aligned left
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start, // left align text
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Fruit Name
                              Text(
                                widget.fruitName,
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Nutritional Info container
                              Container(
                                width: 300,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 12,
                                      offset: const Offset(0, 6),
                                    )
                                  ],
                                ),
                                child: const Text(
                                  'Nutritional Info\n\nCalories: 52 kcal\nSugar: 10.39 g\nFiber: 2.4 g\nVitamin C: 7% of DV\nPotassium: 107 mg',
                                  style: TextStyle(fontSize: 16, color: Colors.black87),
                                  textAlign: TextAlign.left,
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Seller Info container with Indian phone number & name
                              Container(
                                width: 300,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 12,
                                      offset: const Offset(0, 6),
                                    )
                                  ],
                                ),
                                child: const Text(
                                  'Seller: Rahul Kumar\nPhone: +91 98765 43210',
                                  style: TextStyle(fontSize: 16, color: Colors.black87),
                                ),
                              ),

                              const SizedBox(height: 30),

                              // Quantity controls and buy button row
                              Row(
                                children: [
                                  // Quantity Control
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          onPressed: decrementQuantity,
                                        ),
                                        Text(
                                          '${quantity.toStringAsFixed(1)} kg',
                                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: incrementQuantity,
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(width: 30),

                                  // Buy Now Button
                                  ElevatedButton(
                                    onPressed: () {
                                      // You can add buy logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      'Buy Now',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
