import 'package:flutter/material.dart';
import 'package:monalisa/desciription_text.dart';

class ArtworkWidget extends StatefulWidget {
  const ArtworkWidget({super.key});
  
  @override
  State<StatefulWidget> createState() => ArtworkWidgetState();
}

class ArtworkWidgetState extends State<ArtworkWidget> {
  bool _isFavorite = false;
  bool _showDescription = false;

  void _onButtonPressed() {
    setState(() {
      _isFavorite = !_isFavorite;
      if (_isFavorite) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Oeuvre ajoutée à vos favoris'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {},
            ),
          ),
        );
      }
    });
  }

  void _showArticle(){
    setState(() {
      _showDescription = !_showDescription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Mona Lisa"),
      ),
      body:  Column(
         children:[
            Stack(
            alignment: Alignment.center,
            children: [
              const Image(
                image: AssetImage('images/Mona_Lisa.jpg'),
              ),
             IconButton(
              iconSize: 100,
              icon:const Icon(Icons.favorite),
              color: _isFavorite ? Colors.red : const Color.fromRGBO(255, 255, 255, 0.25),
              onPressed: _onButtonPressed
              ),
               SizedBox(
                width: 330,
                height: 270,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    descriptionText,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: _showDescription ? Colors.white :  const Color.fromRGBO(255, 255, 255, 0)
                    ),
                  ),
                )
              )
         ]),
            
            
            const Text("Mona Lisa",
            style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 30,
              color: Colors.brown,
            ), 
            ),
            const Text("Léonard De Vinci",
            style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.article),
                color: Colors.brown,
                onPressed: _showArticle,
              ),
              IconButton(
                  icon: const Icon(Icons.favorite),
                  color: _isFavorite? Colors.red : Colors.brown,
                  onPressed: _onButtonPressed,
                  ),
            ],
          )
         ]
      )
    );
  }
}  
