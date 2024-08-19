
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Column(
//             children: [
//               Text("YO PHON LINGING", style: TextStyle(fontSize: 30, color: Colors.black)),
//               SizedBox(height: 30),
              
//               // SearchAnchor(
//               //   builder: (BuildContext context, SearchController controller) {
//               //     return SearchBar(
//               //       controller: controller,
//               //       padding: const MaterialStatePropertyAll<EdgeInsets>(
//               //           EdgeInsets.symmetric(horizontal: 16.0)),
//               //       onTap: () {
//               //         controller.openView();
//               //       },
//               //       onChanged: (_) {
//               //         controller.openView();
//               //       },
//               //       leading: const Icon(Icons.search),
//               //       hintText: "Cari Tempat Wisata",
//               //       hintStyle: MaterialStateTextStyle.resolveWith(
//               //         (Set<MaterialState> states ) {
//               //           return TextStyle(
//               //             fontSize: (24 / 2) * (getScreenHeight(context)/932 + getScreenWidth(context)/430),
//               //               fontWeight: semi,
//               //               color: Theme.of(context).colorScheme.onPrimary
//               //           );
//               //         }
//               //       ),
//               //     );
//               //   }, suggestionsBuilder: (BuildContext context, SearchController controller) {
//               //     return List<ListTile>.generate(5, (int index) {
//               //       final String item = 'item $index';
//               //       return ListTile(
//               //         title: Text(item),
//               //         onTap: () {
//               //           setState(() {
//               //             controller.closeView(item);
//               //           });
//               //         },
//               //       );
//               //     });
//               //   }
//               // ),

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vanira/main.dart';
import 'package:vanira/templates/buttons/next_button.dart';

class RecommendationCarousel {
  final String path;
  final String name;
  final String location;

  RecommendationCarousel({
    required this.path,
    required this.name,
    required this.location,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppMixin {
  int _currFeature = 0;
  int _currRecommendation = 0;

  final List<RecommendationCarousel> recommendationItems = [
    RecommendationCarousel(
      path: 'assets/tourist_attractions/kelingking_beach.jpg',
      name: 'Kelingking Beach',
      location: 'Bali',
    ),
    RecommendationCarousel(
      path: 'assets/tourist_attractions/ubud_bali.jpg',
      name: 'Ubud Bali',
      location: 'Bali',
    ),
    RecommendationCarousel(
      path: 'assets/tourist_attractions/istana_pagaruyung.jpg',
      name: 'Istana Pagaruyung',
      location: 'Kab. Tanah Datar',
    )
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> fueatureItems = [
      // Slide 1
      Container(
        width: getScreenWidth(context),
        // margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: primaryContainer,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Stack(
            alignment: Alignment.center,
            // clipBehavior: Clip.none, // Allows the image to overflow
            children: [
              Positioned(
                right: 0,
                child: Container(
                  height: (getScreenWidth(context) * 9/16) - 30,
                  width: getScreenWidth(context) * 0.55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBDD7C3).withOpacity(0.6),
                        blurRadius: 30,
                        offset: Offset(0, 4)
                      )
                    ] 
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Cari Tempat Wisata",
                          style: TextStyle(
                            fontSize: 9 * (getScreenHeight(context)/932 + getScreenWidth(context)/430),
                            fontWeight: bold,
                            color: Theme.of(context).colorScheme.onPrimary
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Temukan tempat wisata yang sesuai dengan kepribadian kamu dengan Trip Matcher!",
                          style: TextStyle(
                            // maxline
                            fontSize: 8 * (getScreenHeight(context)/932 + getScreenWidth(context)/430),
                            // fontSize: 14,
                            fontWeight: medium,
                            color: Theme.of(context).colorScheme.onPrimary
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                          maxLines: 5,
                        ),
                        NextButton(
                          onPressed: () {},
                          size: getScreenWidth(context) * 0.085,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  'assets/images/character1.png',
                  width: getScreenWidth(context) * 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
      // Slide 2
      Container(
        // height: getScreenWidth(context) * 0.3,
        // width: (getScreenWidth(context) * 0.3) * 9/16,
        width: getScreenWidth(context),
        // margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: primaryContainer,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Stack(
            alignment: Alignment.center,
            // clipBehavior: Clip.none, // Allows the image to overflow
            children: [
              Positioned(
                right: 0,
                child: Container(
                  height: (getScreenWidth(context) * 9/16) - 30,
                  width: getScreenWidth(context) * 0.55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBDD7C3).withOpacity(0.6),
                        blurRadius: 30,
                        offset: Offset(0, 4)
                      )
                    ] 
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Analisa Wajah Anda",
                          style: TextStyle(
                            fontSize: 9 * (getScreenHeight(context)/932 + getScreenWidth(context)/430),
                            fontWeight: bold,
                            color: Theme.of(context).colorScheme.onPrimary
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Analisa wajah Anda dan temukan tempat wisata yang cocok dengan permasalahan Anda!",
                          style: TextStyle(
                            // maxline
                            fontSize: 8 * (getScreenHeight(context)/932 + getScreenWidth(context)/430),
                            // fontSize: 14,
                            fontWeight: medium,
                            color: Theme.of(context).colorScheme.onPrimary
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                          maxLines: 5,
                        ),
                        NextButton(
                          onPressed: () {},
                          size: getScreenWidth(context) * 0.085,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  'assets/images/character2.png',
                  width: getScreenWidth(context) * 0.33,
                ),
              ),
            ],
          ),
        ),
      )
    ];   

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              // Text("YO PHON LINGING", style: TextStyle(fontSize: 30, color: Colors.black)),
              SizedBox(height: 30),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getScreenHeight(context) * 0.09, // ukuran lebar border
                      height: getScreenHeight(context) * 0.09, // ukuran tinggi border
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF67A076),
                            Color(0xFFEEFFF2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile_pict.jpg',
                            fit: BoxFit.cover,
                            width: 90.0, // ukuran gambar lebih kecil dari container agar border terlihat
                            height: 90.0, // ukuran gambar lebih kecil dari container agar border terlihat
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getScreenHeight(context) * 0.09,
                      child: Image.asset(
                        'assets/logos/Vanira_text.png',
                        width: getScreenWidth(context) * 0.28,
                      ),
                    ),
                    Container(
                      width: getScreenHeight(context) * 0.09, // ukuran lebar border
                      height: getScreenHeight(context) * 0.09, // ukuran tinggi border
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF67A076),
                            Color(0xFFEEFFF2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 100.0, // ukuran lebar border
                          height: 100.0, // ukuran tinggi border
                          decoration: BoxDecoration(
                          color: Colors.white,
                            shape: BoxShape.circle, 
                          ),
                          child: Icon(
                            Icons.notifications_active_outlined,
                            color: Color(0xFF67A076),
                            size: getScreenWidth(context) * 0.08,
                          ),
                        ),
                      ),
                    ),


                    
                  ],
                ),
              ),
              SizedBox(height: 30),
              searchWidget(context),
              SizedBox(height: 30),
              CarouselSlider(
                items: fueatureItems,
                options: CarouselOptions(
                  // height: 200,
                  // enlargeCenterPage: false,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.98,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currFeature = index;
                    });
                  },
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: fueatureItems.asMap().entries.map((item) {
                  bool isActiveFeature = _currFeature == item.key;
                  return GestureDetector(
                    // onTap: (),
                    child: Container(
                      width: isActiveFeature? 15 : 12,
                      height: isActiveFeature? 15 : 12,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFADD9B7),
                            Color(0xFF83D0AF),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),
              recommendationSection(context),
            ],
          ),
        ),
      ),
    );
  }
 
  Widget searchWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0), // Width of the gradient border
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF83D0AF), Color(0xFFADD9B7)],
          stops: [0.0, 1.0],
        ),
        borderRadius: BorderRadius.all(Radius.circular(50)), // Match the border radius of the inner container
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white, // Fill color
          borderRadius: BorderRadius.all(Radius.circular(50)), // Must match the outer container's border radius
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/icons/search.png'),
                width: getScreenWidth(context) * 0.07,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari Tempat Wisata",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: (18 / 2) * (getScreenHeight(context) / 932 + getScreenWidth(context) / 430),
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Image(
                image: AssetImage('assets/icons/filter.png'),
                width: getScreenWidth(context) * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget recommendationSection(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Rekomendasi",
            style: TextStyle(
              fontSize: (24 / 2) * (getScreenHeight(context) / 932 + getScreenWidth(context) / 430),
              fontWeight: FontWeight.w600, // semi
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "Tempat wisata yang mungkin kamu sukai",
              style: TextStyle(
                fontSize: (14 / 2) * (getScreenHeight(context) / 932 + getScreenWidth(context) / 430),
                fontWeight: FontWeight.w500, // medium
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              maxLines: 2,
            ),
          ),
          Text(
            "Lihat Semua",
            style: TextStyle(
              fontSize: (14 / 2) * (getScreenHeight(context) / 932 + getScreenWidth(context) / 430),
              fontWeight: FontWeight.w600, // semi
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      SizedBox(height: 15),
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          enableInfiniteScroll: true,
          viewportFraction: 0.95,
          onPageChanged: (index, reason) {
            setState(() {
              _currRecommendation = index;
            });
          },
        ),
        items: recommendationItems.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: getScreenWidth(context),
                height: getScreenWidth(context) * 9 / 16,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(item.path),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
      SizedBox(height: 10),
      Container(
        width: getScreenWidth(context) * 0.95 - 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendationItems[_currRecommendation].name,
                  style: TextStyle(
                    fontSize: (18 / 2) * (getScreenHeight(context) / 932 + getScreenWidth(context) / 430),
                    fontWeight: FontWeight.w600, // semi
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: primaryIcon,
                      size: getScreenWidth(context) * 0.06,
                    ),
                    SizedBox(width: 5), // Optional spacing between icon and text
                    Text(
                      recommendationItems[_currRecommendation].location,
                      style: TextStyle(
                        fontSize: (16 / 2) * (getScreenHeight(context) / 932 + getScreenWidth(context) / 430),
                        fontWeight: FontWeight.w500, // medium
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.bookmark_rounded,
              color: secondaryIcon,
              size: getScreenWidth(context) * 0.1,
            ),
          ],
        ),
      ),
    ],
  );
}

}
