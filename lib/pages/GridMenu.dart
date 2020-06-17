import 'package:flutter/material.dart';
class GridMenu extends StatelessWidget {
  Items item1 = new Items(
      title: "Faire une déclaration",
      subtitle: "Déclarer un déchet ou une benne ",
      img: "assets/icontrash.png",);

  Items item2 = new Items(
    title: "Mes déclarations",
    subtitle: "Voir vos déclarations",
    img: "assets/Historic.png",
  );
  Items item3 = new Items(
    title: "Profil",
    subtitle: "Consulter votre profil",
    img: "assets/Profil.png",
  );
  Items item4 = new Items(
    title: "Contact",
    subtitle: "Contacter les autorités",
    img: "assets/Contact.png",
  );
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];

    var color = 0xffFFFFFF;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(top:70,left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 72,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style:
                   TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style:
                      TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 14,
                  ),

                ],
              ),
            );
          }).toList()),
    );
  }
  }




class Items {
  String title;
  String subtitle;

  String img;
  Items({this.title, this.subtitle, this.img});
}
