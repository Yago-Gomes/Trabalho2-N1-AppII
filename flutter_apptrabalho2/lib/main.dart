import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tutao AutoPecas",
    home: FirstPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto Peças do Tutão",
          style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
              child: Image.asset("images/logo2.png"),),

            Text("Auto Peças do Tutão", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.bold),),
            Text("Tudo que seu JDM precisa!", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.bold),),

            Padding(padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                Image.asset("images/car.png"),
                Image.asset("images/tools.png"),
                Image.asset("images/carparts.png"),
              ],
            ),
            ),

            ElevatedButton(
              child: Text("Atendimento", style: TextStyle(color: Colors.black87),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: ListView(

        children: <Widget>[
          ListTile(
            leading: Icon(Icons.pin_drop),
            title: Text("Como chegar"),
          ),

          ListTile(
            leading: Icon(Icons.photo),
            title: Text("Nossos trabalhos")
          ),

          ListTile(
            leading: Icon(Icons.sticky_note_2_outlined),
            title: Text("Catálogo de Peças"),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Telefone"),
          ),

          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Horários de atendimento"),
          ),

          Image.asset("images/civic.png"),

          Padding(padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              ElevatedButton(
                child: Text("Página Inicial", style: TextStyle(color: Colors.black87),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                ),

              ElevatedButton(
                child: Text("Parceiros", style: TextStyle(color: Colors.black87),),
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()),
                 );
               },
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
             )
            ],
          ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parceiros"),
        backgroundColor: Colors.lightBlueAccent,
      ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Image.asset("images/trsucatas.png"),
            Image.asset("images/ferrovelho.png"),
            Image.asset("images/jdmmanic.jfif"),
            Image.asset("images/fueltech.jpg"),
          ],
        )
    );
  }
}