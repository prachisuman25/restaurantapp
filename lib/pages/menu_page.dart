import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurantapp/components/button.dart';
import 'package:restaurantapp/components/food_tile.dart';
import 'package:restaurantapp/models/food.dart';
import 'package:restaurantapp/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
//food menu
  List foodMenu = [
    //donuts
    Food(
      name: 'Donuts',
      price: '20',
      imagePath: 'lib/images/donut.png',
      rating: '4.8',
    ),

    //fried chicken
    Food(
      name: 'Fried Chicken',
      price: '45',
      imagePath: 'lib/images/fried-chicken.png',
      rating: '4.3',
    ),

    //Dosa
    Food(
      name: 'Dosa',
      price: '25',
      imagePath: 'lib/images/dosa.png',
      rating: '4.7',
    ),

    //Sushi
    Food(
      name: 'Sushi',
      price: '60',
      imagePath: 'lib/images/sushi.png',
      rating: '4.1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "Delightful👌 ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow[400],
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      "Get 30% Promo",
                      style: GoogleFonts.aDLaMDisplay(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //redeem button
                    MyButton(
                      text: "REDEEM",
                      onTap: () {
                        //
                      },
                    ),
                  ],
                ),

                //image
                Image.asset(
                  'lib/images/pizza.png',
                  height: 100,
                  width: 95,
                )
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Search Here"
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "FOOD MENU",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(height: 25,),

          //popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                    //image
                Image.asset('lib/images/samosa.png',
                height: 60,
                ),
                
                const SizedBox(width: 20,),

                //name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text("Samosa", style: GoogleFonts.aDLaMDisplay(fontSize: 18),),

                  const SizedBox(height:10),
                  //price
                  Text('\$19.00', style: TextStyle(color: Colors.grey[700]),),
                  ],
                ),
                ],
              ),

                //heart
                Icon(Icons.favorite_outline, color: Colors.red[700],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
