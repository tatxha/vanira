import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vanira/main.dart';
import 'package:vanira/templates/buttons/next_button.dart';

// class FeatureCarousel {
//   final String path;
//   final String title;
//   final String desc;

//   FeatureCarousel({
//     required this.path,
//     required this.title,
//     required this.desc,
//   });
// }

// class RecommendationCarousel {
//   final String path;
//   final String name;
//   final String location;

//   RecommendationCarousel({
//     required this.path,
//     required this.name,
//     required this.location,
//   });
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppMixin{
  @override
  int _currentIndex = 0;
  // final CarouselController _controller = CarouselController();

  // final List<FeatureCarousel> featureData = [
  //   FeatureCarousel(
  //     path: 'assets/images/character1.png',
  //     title: 'Kelingking Beach',
  //     desc: 'Bali',
  //   ),
  //   FeatureCarousel(
  //     path: 'assets/images/character2.png',
  //     title: 'Ubud Bali',
  //     desc: 'Bali',
  //   )
  // ];
  
  // final List<RecommendationCarousel> recommedationData = [
  //   RecommendationCarousel(
  //     path: 'assets/tourist_attractions/kelingking_beach.jpg',
  //     name: 'Kelingking Beach',
  //     location: 'Bali',
  //   ),
  //   RecommendationCarousel(
  //     path: 'assets/tourist_attractions/ubud_bali.jpg',
  //     name: 'Ubud Bali',
  //     location: 'Bali',
  //   ),
  //   RecommendationCarousel(
  //     path: 'assets/tourist_attractions/istana_pagaruyung.jpg',
  //     name: 'Istana Pagaruyung',
  //     location: 'Kab. Tanah Datar',
  //   )
  // ];

  Widget build(BuildContext context) {
    final List<Widget> fueatureItems = [
      // Slide 1
      Container(
        // height: getScreenWidth(context) * 0.3,
        // width: (getScreenWidth(context) * 0.3) * 9/16,
        width: getScreenWidth(context),
        // width: 100,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Cari Tempat Wisata"),
                        Text("Temukan tempat wisata yang sesuai dengan kepribadian kamu dengan Trip Matcher!"),
                        NextButton(
                          onPressed: (){}
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/iamges/character1.png',
                    width: getScreenWidth(context) * 2,
                  ) 
                )
              ],
            )
          ],
        ),
      ),
      // Slide 2
      
      Container(
        // height: (getScreenWidth(context) * 0.3) * 9/16,
        // width: 10,
        width: getScreenWidth(context),
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Slide 1',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Icon(Icons.star, size: 50, color: Colors.white),
          ],
        ),
      ),
      
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("yo phon lingiasdasdng"),
            CarouselSlider(
              items: fueatureItems,
              options: CarouselOptions(
                height: 200,
                // enlargeCenterPage: false,
                autoPlay: true,
                // aspectRatio: 16 / 9,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                enableInfiniteScroll: true,
                viewportFraction: 0.98,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: fueatureItems.asMap().entries.map((entry) {
                return GestureDetector(
                  // onTap: (),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? Colors.blueAccent
                          : Colors.grey,
                    ),
                  ),
                );
              }).toList(),
            ),

            // SizedBox(height: 20),
            // // dot di bawah carousel
            // AnimatedSmoothIndicator(
            //   activeIndex: _currentIndex,
            //   count: images.length,
            //   effect: WormEffect(
            //     dotHeight: 10,
            //     dotWidth: 10,
            //     spacing: 5,
            //     dotColor: Colors.grey,
            //     activeDotColor: Color(0xFF4A707A),
            //     paintStyle: PaintingStyle.fill,
            //   ),
            // ),
          ],
        )
      ),
    );
  }
}