import 'package:flutter/material.dart';

class Imagewidget extends StatefulWidget {
  const Imagewidget({Key? key}) : super(key: key);

  @override
  _ImagewidgetState createState() => _ImagewidgetState();
}

class _ImagewidgetState extends State<Imagewidget> {
  @override
  Widget build(BuildContext context) {
    final image3 =
        "https://free4kwallpapers.com/uploads/originals/2022/06/25/blade-marvel-avengers-wallpaper.jpg";

    final image4 =
        "https://free4kwallpapers.com/uploads/originals/2022/06/26/waiting-for-the-guy-wallpaper.jpg";

    return Scaffold(
        appBar: AppBar(
          title: Text('Manish Image Widget'),
        ),
        body: ListView(
          children: [
            Image.network(
              "https://t3.ftcdn.net/jpg/03/18/11/14/360_F_318111476_ijsCRAGJGBP5ilNwMDKpMtIBcoHzrHEP.jpg",
              width: 400,
              height: 300,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : Container(
                          width: 200,
                          height: 200,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(image4),
              radius: 120,
            ),
            CircleAvatar(
              radius: 140,
              child: ClipOval(
                  child: Image.network(image3,
                      width: 300, height: 300, fit: BoxFit.cover)),
            ),
            Image.asset(
              "assets/flower1.jpg",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/lumbini.jpg",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/sky.jpg",
              width: 200,
              height: 200,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/travel.jpg"),
              radius: 120,
            )
          ],
        ));
  }
}
