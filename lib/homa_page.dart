import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, dynamic>> freelancers = [
    {
      "name": "Wade Warren",
      "title": "Beautician",
      "imageUrl": "assets/images/image2.png",
      "rating": 4.9,
    },
    {
      "name": "Wade Warren",
      "title": "Beautician",
      "imageUrl": "assets/images/image3.png",
      "rating": 4.9,
    },
    {
      "name": "Wade Warren",
      "title": "Beautician",
      "imageUrl": "assets/images/image4.png",
      "rating": 4.9,
    },
    {
      "name": "Wade Warren",
      "title": "Beautician",
      "imageUrl": "assets/images/image5.png",
      "rating": 4.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Image.asset('assets/images/logo.png'),
        actions: [
          Image.asset('assets/images/bell.png'),
          SizedBox(width: 20),
          Image.asset('assets/images/cart.png'),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 295,
                    height: 51,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "search here ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 51,
                    width: 51,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(color: Colors.grey),
                        ),
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.filter_list_rounded,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 203,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight,
                  colors: [Color(0xffC2D7F2), Colors.white],
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Text(
                              'Todays Deal',
                              style: TextStyle(
                                fontSize: 18,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 3
                                  ..color = Colors.black,
                              ),
                            ),

                            Text(
                              'Todays Deal',
                              style: TextStyle(
                                fontSize: 18,

                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // Text(
                        //   "50% OFF",
                        //   style: TextStyle(
                        //     fontSize: 28,
                        //     fontWeight: FontWeight.bold,

                        //     color: Color(0xff000000),
                        //   ),
                        // ),
                        Stack(
                          children: [
                            Text(
                              '50% OFF',
                              style: TextStyle(
                                fontSize: 28,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 3
                                  ..color = Colors.black,
                              ),
                            ),

                            Text(
                              '50% OFF',
                              style: TextStyle(
                                fontSize: 28,

                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        Text(
                          "Et provident eos est dolore. Eum libero \neligendi molestias aut et quibusdam \naspernatur.",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C6F81),
                          ),
                        ),
                        SizedBox(height: 10),
                        Image.asset(
                          "assets/images/rec.png",
                          width: 100,
                          height: 26,
                        ),
                        // Container(
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal: 20,
                        //     vertical: 12,
                        //   ),
                        //   decoration: BoxDecoration(
                        //     color: Colors.black,
                        //     borderRadius: BorderRadius.circular(0),
                        //   ),
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.min,
                        //     children: [
                        //       Text(
                        //         "BUY IT NOW",
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //       SizedBox(width: 8),
                        //       Icon(
                        //         Icons.arrow_right_alt,
                        //         color: Colors.white,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/image1.png",
                    height: 240,
                    width: 130,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            sectionHeader("Top Rated Freelances"),
            SizedBox(height: 10),

            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: freelancers.length,
                separatorBuilder: (_, _) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  return listBuilderWidget(freelancers[index]);
                },
              ),
            ),

            sectionHeader("Top Services"),
          ],
        ),
      ),
    );
  }
}

Widget sectionHeader(String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffC2D7F2), Colors.white],
            ),
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget listBuilderWidget(Map<String, dynamic> item) {
  return SizedBox(
    height: 133,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(item["imageUrl"], fit: BoxFit.cover),
            ),
          ),
        ),

        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    item["name"],
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item["title"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7C3AED).withValues(alpha: 0.10),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: Color(0xFF7C3AED),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          (item["rating"] as num).toStringAsFixed(1),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
