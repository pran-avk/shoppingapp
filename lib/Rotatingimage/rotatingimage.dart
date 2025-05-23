import 'package:flutter/material.dart';
import 'dart:async';

class RotatingImageRow extends StatefulWidget {
  const RotatingImageRow({super.key});

  @override
  State<RotatingImageRow> createState() => _RotatingImageRowState();
}

class _RotatingImageRowState extends State<RotatingImageRow> {
  final PageController _pageController = PageController();
  final List<String> _imageUrls = [
    'https://ik.imagekit.io/jyxcfhgon/flutter/20250510_1825_Fruit%20Discount%20Offer_simple_compose_01jtx454t6ez5am9xjczp7jq19.png?updatedAt=1747921944097',
    'https://ik.imagekit.io/jyxcfhgon/flutter/20250510_1822_Apple%20Discount%20Banner_simple_compose_01jtx4059desqt0tvjwp8dpg6d.png?updatedAt=1747921943780',
    'https://ik.imagekit.io/jyxcfhgon/flutter/20250522_1859_Berry%20Discount%20Offer_simple_compose_01jvw2t8d4f4z90ehkt4dr05ca.png?updatedAt=1747921943860',
    'https://ik.imagekit.io/jyxcfhgon/flutter/20250510_1826_Banana%20Discount%20Offer_simple_compose_01jtx47weje3zryg7ss2k0na0c.png?updatedAt=1747921943932',
  ];

  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      _currentPage = (_currentPage + 1) % _imageUrls.length;
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: _imageUrls.length,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            _imageUrls[index],
            fit: BoxFit.cover,
            width: 504,
            height: 336,
          ),
        );
      },
    );
  }
}
