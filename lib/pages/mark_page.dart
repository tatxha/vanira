import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class TouristAttractionsData {
  final String path;
  final String name;
  final String location;

  TouristAttractionsData({
    required this.path,
    required this.name,
    required this.location,
  });
}

class MarkPage extends StatefulWidget {
  const MarkPage({super.key});

  @override
  State<MarkPage> createState() => _MarkPageState();
}

class _MarkPageState extends State<MarkPage> with AppMixin {
  final List<TouristAttractionsData> images = [
    TouristAttractionsData(
      path: 'assets/tourist_attractions/kelingking_beach.jpg',
      name: 'Kelingking Beach',
      location: 'Bali',
    ),
    TouristAttractionsData(
      path: 'assets/tourist_attractions/ubud_bali.jpg',
      name: 'Ubud Bali',
      location: 'Bali',
    ),
    TouristAttractionsData(
      path: 'assets/tourist_attractions/istana_pagaruyung.jpg',
      name: 'Istana Pagaruyung',
      location: 'Kab. Tanah Datar',
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wisata yang Anda Tandai",
          style: TextStyle(
            fontSize: 20,
            fontWeight: bold,
            color: Theme.of(context).colorScheme.onPrimary
          ),  
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: images.map((attractions_data) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25), 
                        blurRadius: 4,   
                        offset: Offset(0, 1), 
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: getScreenWidth(context) * 0.2, 
                          width: getScreenWidth(context) * 0.2, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25), 
                                spreadRadius: 2,
                                blurRadius: 4,   
                                offset: Offset(0, 3), 
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage(attractions_data.path),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: getScreenWidth(context) * 0.2, 
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    attractions_data.name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: semi,
                                      color: Theme.of(context).colorScheme.onPrimary
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin, 
                                        color: primaryIcon,
                                        size: getScreenWidth(context) * 0.05,
                                      ),
                                      SizedBox(width: getScreenWidth(context) * 0.005,),
                                      Text(
                                        attractions_data.location,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: medium,
                                          color: Theme.of(context).colorScheme.onPrimary
                                        ),
                                      ),
                                    ],
                                  )
                                ]
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.bookmark_rounded, 
                          color: secondaryIcon,
                          size: getScreenWidth(context) * 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ),
    );
  }
}