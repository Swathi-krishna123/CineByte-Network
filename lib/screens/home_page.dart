import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final containerwidth = MediaQuery.of(context).size.width * 0.8;
    final containerheight = MediaQuery.of(context).size.height * 0.20;
    final container2height = MediaQuery.of(context).size.height * 0.2;
    final container2width = MediaQuery.of(context).size.width * 0.8;
    return Container( height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/first page.png'),
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          actionsIconTheme: const IconThemeData(color: Colors.white),
          toolbarHeight: 130,
          leadingWidth: 120,
          leading: Center(
            child: Text('Home',
                style: GoogleFonts.fugazOne(
                  color: Colors.white,
                  fontSize: 17,
                )),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_location_alt_sharp)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.circle_notifications_sharp)),
            const SizedBox(
              width: 25,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(children: [
              Container(
                height: containerheight,
                width: containerwidth,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: <Color>[
                      Color(0xffE7B588),
                      Color(0xffE5C8AE),
                      Color(0xffFFEFE1)
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Row(
                    children: [
                      const InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Title(
                              color: Colors.black,
                              child: Text(
                                'Dileep Productions',
                                style: GoogleFonts.acme(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                          Text(
                            'bileep345@gmail.com',
                            style: GoogleFonts.acme(fontSize: 15),
                          ),
                          Text(
                            '+91 9746606971',
                            style: GoogleFonts.acme(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 15,
                  right: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_rounded,
                        color: Color(0xff2D3037),
                        size: 35,
                      )))
            ]),
            // const SizedBox(height: 20),
            CarouselSlider(
              items: [
                Container(
                  // height: 150,
                  width: container2width,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.onmanorama.com/content/dam/mm/en/entertainment/movie-reviews/images/2024/4/11/aavesham.jpg.transform/845x440/image.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(25)),
                ),
                Container(
                  // height: 150,
                  width: container2width,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.ytimg.com/vi/S27Zr46aQ_k/maxresdefault.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(25)),
                ),
                Container(
                  // height: 150,
                  width: container2width,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://static.tnn.in/thumb/msid-104744561,thumbsize-62918,width-1280,height-720,resizemode-75/104744561.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ],
              options: CarouselOptions(
                height: container2height,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enlargeCenterPage: true,
                enlargeFactor: 0.8,
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Buttoncontainer(
              leadingicon: Icons.account_circle_rounded,
              title: 'Profile',
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Buttoncontainer(leadingicon: Icons.feedback, title: 'Feedback'),
            // const SizedBox(
            //   height: 20,
            // ),
            Buttoncontainer(leadingicon: Icons.logout_rounded, title: 'Logout')
          ],
        ),
      ),
    );
  }
}
