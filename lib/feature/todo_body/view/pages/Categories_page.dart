import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage("assets/images/images.jpeg"),
          ),
        ),
        title: Center(
          child: const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: const Icon(Icons.search),
            ),
            onPressed: () {},
          ),
        ],
      ),
    
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/images (1).jpeg",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '"The memories is a shield and life helper."',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Alin Jose Perera',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  _buildAddCategoryCard(),
                  // _buildCategoryCard("Home", "10 tasks", "🏠"),
                  // _buildCategoryCard("Sport", "5 tasks", "🏋️"),
                  // _buildCategoryCard("Homework", "13 tasks", "📝"),
                  // _buildCategoryCard("E-learning", "4 tasks", "📺"),
                  // _buildCategoryCard("Shopping", "9 tasks", "🛒"),
                  // _buildCategoryCard("Food", "1 task", "🍕"),
                  // _buildCategoryCard("Design", "3 tasks", "👨‍🎨"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddCategoryCard() {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(Icons.add, size: 50, color: Colors.grey)),
      ),
    );
  }

  // Widget _buildCategoryCard(String title, String tasks, String emoji) {
  //   return Card(
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(emoji, style: TextStyle(fontSize: 25)),
  //           Spacer(flex: 2),
  //           Text(
  //             title,
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //           ),
  //           Text(tasks, style: TextStyle(color: Colors.grey)),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
