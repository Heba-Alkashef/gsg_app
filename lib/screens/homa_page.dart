// Heba Alkashef
import 'package:flutter/material.dart';
import 'package:gsg_application/widgets/freelancer.dart';
import 'package:gsg_application/widgets/list_builder_custom.dart';
import 'package:gsg_application/widgets/section_widget.dart';
import 'package:gsg_application/widgets/service_info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> topServices = const [
    {
      "cover": "assets/images/image6.png",
      "avatar": "assets/images/Ellipse.png",
      "name": "Miss Zachary Will",
      "role": "Beautician",
      "desc":
          "Doloribus saepe aut necessitatibus non qui. Dolor sit amet, consectetur.",
      "rating": 4.9,
    },
    {
      "cover": "assets/images/image7.png",
      "avatar": "assets/images/Ellipse.png",
      "name": "Anna Collins",
      "role": "Makeup Artist",
      "desc": "Expert in bridal and event makeup with a soft glam style.",
      "rating": 4.8,
    },
    {
      "cover": "assets/images/image8.png",
      "avatar": "assets/images/Ellipse.png",
      "name": "Lena Morris",
      "role": "Makeup Artist",

      "desc": "Specialized in modern cuts and balayage coloring techniques.",
      "rating": 4.7,
    },
  ];

  final List<FreelancerInfo> freelancer = [
    FreelancerInfo(
      img: "assets/images/image2.png",
      name: "Wade Warren",
      title: "Beautician",
      rating: 4.9,
    ),
    FreelancerInfo(
      img: "assets/images/image2.png",
      name: "Wade Warren",
      title: "Beautician",
      rating: 4.9,
    ),
    FreelancerInfo(
      img: "assets/images/image2.png",
      name: "Wade Warren",
      title: "Beautician",
      rating: 4.9,
    ),
    FreelancerInfo(
      img: "assets/images/image2.png",
      name: "Wade Warren",
      title: "Beautician",
      rating: 4.9,
    ),
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
      body: SingleChildScrollView(
        child: Center(
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
              SectionWidget(sectionTitle: "Top Rated Freelances"),
              SizedBox(height: 10),

              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: freelancer.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    return ListBuilderCustom(item: freelancer[index]);
                  },
                ),
              ),
              SectionWidget(sectionTitle: "Top Services"),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (context, index) {
                  final service = topServices[index];
                  return TopService(
                    coverImage: service["cover"],
                    avatarImage: service["avatar"],
                    name: service["name"],
                    role: service["role"],
                    description: service["desc"],
                    rating: (service["rating"] as num).toDouble(),
                  );
                },
                separatorBuilder: (_, _) => const SizedBox(height: 32),
                itemCount: topServices.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String tittle) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(tittle)));
}
