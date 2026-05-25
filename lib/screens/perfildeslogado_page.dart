import 'package:flutter/material.dart';
import 'package:projf_lojaarcana/screens/cadastro_page.dart';
import 'package:projf_lojaarcana/screens/login_page.dart';

class PerfilDeslogadoPage extends StatelessWidget {
  const PerfilDeslogadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND IMAGE
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/fundo_login.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // CONTEÚDO
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("asset/images/logo_arcana.png", height: 150,),

                  SizedBox(height: 5),

                  // TÍTULO
                  Text(
                    "Bem-vindo à Loja Arcana",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: Color(0xFF4B1FA7),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  // SUBTÍTULO
                  Text(
                    "Entre ou crie sua conta ✨✨",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 40),

                  // BOTÃO LOGIN
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size.fromHeight(50),
                      minimumSize: Size.fromHeight(50),

                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                      backgroundColor: Color(0xFF4B1FA7),
                      foregroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },

                    child: Text("Entrar"),
                  ),

                  SizedBox(height: 15),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      maximumSize: Size.fromHeight(50),
                      minimumSize: Size.fromHeight(50),

                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xFF4B1FA7),

                      side: BorderSide(
                        color: Color(0xFF4B1FA7),
                        width: 2,
                      ),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => CadastroPage()),
                        );
                    },

                    child: Text("Cadastrar-se"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,

        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF4B1FA7),
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Início",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: "Categorias",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favoritos",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Conta",
          ),
        ],
      ),
    );
  }
}