import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            _buildPromoBanner(),
            _buildCategoriesSection(),
            _buildFlashDealSection(),
            _buildProductsList(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // --- APP BAR ---
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF1455A3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.shopping_cart, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 8),
          const Text(
            '6Valley',
            style: TextStyle(
              color: Color(0xFF1455A3),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
// --- SEARCH BAR ---
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Product...',
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
          ),
          Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              color: Color(0xFF1455A3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // --- PROMO BANNER ---
  Widget _buildPromoBanner() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 160,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F7FC), // Light blue background
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Smart Home\nSmart Savings!',
                        style: TextStyle(
                          color: Color(0xFF1455A3),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Unmissable deals on all your home appliance needs.',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1455A3),
                          minimumSize: const Size(80, 30),
                        ),
                        child: const Text('Get Yours', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                // Replace this Placeholder with your Image.asset()
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://via.placeholder.com/150'), // Add actual image path
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        // Pagination Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDot(false),
            const SizedBox(width: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF1455A3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('3 / 3', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            const SizedBox(width: 4),
            _buildDot(false),
          ],
        )
      ],
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF1455A3) : Colors.blue.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
    );
  }

  // --- CATEGORIES ---
  Widget _buildCategoriesSection() {
    final categories = [
      {'title': "Men's Fashion", 'color': Colors.blue.shade50},
      {'title': "Women's Fashion", 'color': Colors.orange.shade50},
      {'title': "Kid's Fashion", 'color': Colors.pink.shade50},
      {'title': "Health & Beauty", 'color': Colors.green.shade50},
      {'title': "Pet Supplies", 'color': Colors.teal.shade50},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style: TextStyle(color: const Color(0xFF1455A3), fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: categories[index]['color'] as Color,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        // Add Image.asset() here for category images
                        child: const Icon(Icons.image, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 70,
                        child: Text(
                          categories[index]['title'] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  // --- FLASH DEAL ---
  Widget _buildFlashDealSection() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF3B71C0), // Flash deal banner blue
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'FLASH DEAL',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  const Icon(Icons.flash_on, color: Colors.yellow, size: 24),
                  const SizedBox(width: 8),
                  _buildTimeBox('610', 'Days'),
                  _buildTimeBox('08', 'Hours'),
                  _buildTimeBox('48', 'Mins'),
                  _buildTimeBox('31', 'Sec'),
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                ],
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            'Hurry Up ! The offer is limited. Grab while it lasts',
            style: TextStyle(color: Color(0xFF1455A3), fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  Widget _buildTimeBox(String value, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Text(
              value,
              style: const TextStyle(color: Color(0xFF1455A3), fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 10),
          )
        ],
      ),
    );
  }

  // --- PRODUCT LIST ---
  Widget _buildProductsList() {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 160,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Center(
                  // Replace with actual product image
                  child: Icon(Icons.phone_iphone, size: 100, color: Colors.grey.shade400),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Icon(Icons.flash_on, color: Colors.yellow.shade700),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.favorite_border, size: 18),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // --- BOTTOM NAV ---
  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF1455A3),
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: 'Inbox'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'More'),
      ],
    );
  }
}