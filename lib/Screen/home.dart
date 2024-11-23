import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> coffee = [
    {
      'imagePath': 'assets/images/Image.png',
      'title': 'Caffe Mocha',
      'description': 'Deep foam',
      'rating': '4.8',
      'price': "\$ 4.53",
    },
    {
      'imagePath': 'assets/images/coffee.png',
      'title': 'Flat White',
      'description': 'Espresso',
      'rating': '4.7',
      'price': '\$ 3.53',
    },
    {
      'imagePath': 'assets/images/coffee.png',
      'title': 'Caffe Mocha',
      'description': 'Deep foam',
      'rating': '4.8',
      'price': "\$ 4.53",
    },
    {
      'imagePath': 'assets/images/Image.png',
      'title': 'Flat White',
      'description': 'Espresso',
      'rating': '4.7',
      'price': '\$ 3.53',
    },
  ];

  final List<String> categoryList = [
    'All Coffee',
    'Macchiato',
    'Latte',
    'American'
  ];

  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Navigation Section
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_grocery_store_outlined,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
        ],
      ),

      // Body Section
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            SizedBox(
              height: 380,
              child: Stack(
                children: [
                  // Location Text Design
                  Container(
                    height: 280,
                    decoration: const BoxDecoration(
                      color: Color(0xff313131),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 56, right: 16, bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Location',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Mirpur, Dhaka',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),

                          // Search Bar
                          Form(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search_outlined,
                                  color: Colors.grey,
                                ),
                                hintText: 'Search Coffee',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.filter_list_outlined),
                                  style: IconButton.styleFrom(
                                    backgroundColor: const Color(0xffC67C4E),
                                    foregroundColor: Colors.white,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                    iconSize: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Banner Section
                  Positioned(
                    top: 210,
                    left: 20,
                    right: 20,
                    //Banner Design
                    child: Container(
                      height: 150,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color(0xffC67C4E),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/Banner.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      //Text Design
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Promo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              'Buy One Get \nOne FREE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Category Section
            Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            categoryIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              categoryList[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: categoryIndex == index
                                    ? const Color(0xffC67C4E)
                                    : const Color(0xff313131),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            // Product Section
            Column(
              children: [
                 GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: coffee.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(

                          children: [
                            Image.asset(
                              "${coffee.elementAt(index)['imagePath']}",
                              width: double.maxFinite,
                            ),
                            Column(
                              children: [
                                Text(
                                  "${coffee.elementAt(index)['title']}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${coffee.elementAt(index)['description']}",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${coffee.elementAt(index)['price']}",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${coffee.elementAt(index)['rating']}",
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.orange,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.orange,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
