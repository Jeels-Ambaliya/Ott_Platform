import 'package:flutter/material.dart';
import 'package:ott_platform/views/screens/selecte.dart';
import 'package:scaled_list/scaled_list.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c2260),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff283990),
                            ),
                            child: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff283990),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Search Movies, Series",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        "Trending Platform",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ScaledList(
                      itemCount: categories.length,
                      itemColor: (index) {
                        return kMixedColors[index % kMixedColors.length];
                      },
                      itemBuilder: (index, selectedIndex) {
                        final category = categories[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Select_Page(
                                  link: category.link,
                                ),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: selectedIndex == index ? 100 : 80,
                                child: Image.asset(category.image),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                category.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: selectedIndex == index ? 25 : 20),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xff2f4aa6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Top Search",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Select_Page(
                                        link:
                                            "https://www.youtube.com/watch?v=ULEQb_l-N08&ab_channel=Goldmines",
                                      ),
                                    ),
                                  );
                                },
                                child: top(
                                  image:
                                      "https://stat4.bollywoodhungama.in/wp-content/uploads/2018/11/Excel-Entertainment-presents-the-poster-of-KGF-and-it-releases-on-December-21.jpg",
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Select_Page(
                                        link:
                                            "https://www.youtube.com/watch?v=FkcehKkYUto&ab_channel=KRMOVIES",
                                      ),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: top(
                                    image:
                                        "https://c8.alamy.com/comp/J30B3J/baahubali-the-beginning-aka-bahubali-the-beginning-poster-from-left-J30B3J.jpg",
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Select_Page(
                                        link:
                                            "https://www.youtube.com/watch?v=tO0517Yz0JM&ab_channel=Movie4South",
                                      ),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: top(
                                    image:
                                        "http://st1.photogallery.ind.sh/wp-content/uploads/indiacom/rajinikanth-and-akshay-kumar-together-on-poser-robot-20-201611-1479701986.jpg",
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Select_Page(
                                        link:
                                            "https://www.youtube.com/watch?v=6XMuUVw7TOM&t=11s&ab_channel=ColumbiaPicturesPhils",
                                      ),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: top(
                                    image:
                                        "https://m.media-amazon.com/images/M/MV5BMjM3MjQ1MzkxNl5BMl5BanBnXkFtZTgwODk1ODgyMjI@._V1_.jpg",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget top({required String image}) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  final List<Color> kMixedColors = [
    Colors.red,
    Colors.blueAccent,
    Colors.purple,
    Colors.blueAccent,
    Colors.pinkAccent,
    Color(0xffc657fb),
    Color(0xfffb8457),
  ];

  final List<Category> categories = [
    Category(
        image: "assets/images/netflix.png",
        name: "Netflix",
        link: "https://www.netflix.com/in/"),
    Category(
        image: "assets/images/amazon.png",
        name: "Amazon Prime",
        link:
            "https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_gm_159_mkw_sRumWk2Nj-dc&mrntrk=pcrid_610141119732_slid__pgrid_84577172328_pgeo_9062189_x__adext__ptid_kwd-303629226711&gclid=Cj0KCQiAx6ugBhCcARIsAGNmMbiIGLwcLBsNXU1BeFVzNjuNi6K1NVdpWlVA3JcktHz-daB8fOjitm0aAhujEALw_wcB"),
    Category(
        image: "assets/images/voot.png",
        name: "Voot",
        link: "https://www.voot.com/"),
    Category(
        image: "assets/images/hotstar.png",
        name: "Disney HotStar",
        link: "https://www.hotstar.com/in"),
    Category(
        image: "assets/images/Jiocinema.png",
        name: "Jio Cinema",
        link: "https://www.jiocinema.com/"),
  ];
}

class Category {
  final String image;
  final String name;
  final String link;

  Category({required this.image, required this.name, required this.link});
}
