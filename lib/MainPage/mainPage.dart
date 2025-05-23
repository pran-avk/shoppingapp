import 'package:flutter/material.dart';
import 'dart:math';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Fruits List',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  itemCount: fruits.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 3 / 4,
                  ),
                  itemBuilder: (context, index) {
                    final fruit = fruits[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FruitBuyPage(
                              name: fruit['name']!,
                              imageUrl: fruit['url']!,
                            ),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          fruit['url']!,
                          fit: BoxFit.cover,
                        ),
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

class FruitBuyPage extends StatefulWidget {
  final String name;
  final String imageUrl;

  const FruitBuyPage({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  State<FruitBuyPage> createState() => _FruitBuyPageState();
}

class _FruitBuyPageState extends State<FruitBuyPage> {
  int quantity = 1;
  late final double price;
  late final String seller;

  final List<String> sellers = [
    'FreshFruits Inc.',
    'Tropical Traders',
    'Nature\'s Best',
    'Fruitopia',
    'Green Valley',
  ];

  // Placeholder nutrient image URL for all fruits (replace with actual URLs if you want)
  final String nutrientsImageUrl =
      'https://upload.wikimedia.org/wikipedia/commons/0/0b/Nutrition_facts.svg';

  @override
  void initState() {
    super.initState();
    final random = Random();
    price = (random.nextDouble() * 150 + 50).roundToDouble(); // ₹50 - ₹200 approx
    seller = sellers[random.nextInt(sellers.length)];
  }

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void buy() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Bought $quantity x ${widget.name} for ₹${(price * quantity).toStringAsFixed(2)} from $seller!',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy ${widget.name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                widget.imageUrl,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                nutrientsImageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.contain,
                color: Colors.green[700],
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              'Seller: $seller',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            Text(
              'Price: ₹${price.toStringAsFixed(2)} per unit',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decrement,
                  child: const Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  quantity.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: increment,
                  child: const Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                  ),
                ),
              ],
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: buy,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    'Buy',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
