import "package:flutter/material.dart";
import "package:projf_lojaarcana/screens/perfillogado_page.dart";

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                  "asset/images/logo_arcana.png",
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Loja Arcana",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 40, 0, 90),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sua loja geek personalizada",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 31, 135, 253),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.auto_awesome,
                                    color: Color.fromARGB(255, 31, 135, 253),
                                    size: 14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 10),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: Color(0xFF4B1FA7),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                "Buscar camisetas, canecas, ecobags e mais...",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF4B1FA7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xFF4B1FA7),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 10),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.tune, color: Color(0xFF4B1FA7)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0, 8),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage("asset/images/banner.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(121, 0, 0, 0),
                            const Color.fromARGB(59, 0, 0, 0),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Itens geeks\nfeitos do seu jeito",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 6),

                            Text(
                              "Personalize camisetas,\ncanecas e muito mais.",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),

                            SizedBox(height: 15),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple,

                                elevation: 4,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              onPressed: () {},

                              child: Text(
                                "Explorar agora ->",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 35),

                  Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      categorias(Icons.checkroom, "Camisetas"),
                      categorias(Icons.coffee, "Canecas"),
                      categorias(Icons.shopping_bag, "Ecobags"),
                      categorias(Icons.draw, "Personalizados"),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Destaques",
                        style: TextStyle(
                          color: Color.fromARGB(255, 40, 0, 90),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Ver todos >",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 31, 135, 253),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      produtos(
                        "Camiseta Hollow Knight",
                        "R\$ 89,90",
                        "asset/images/camisa.png",
                      ),

                      SizedBox(width: 8),

                      produtos(
                        "Caneca gamer Link",
                        "R\$ 59,90",
                        "asset/images/caneca.png",
                      ),

                      SizedBox(width: 8),

                      produtos(
                        "Ecobag Harry Potter",
                        "R\$ 49,90",
                        "asset/images/ecobag.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PerfilPage()),
              );
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
      ),
    );
  }
}

Widget categorias(IconData icon, String texto) {
  return Column(
    children: [
      InkWell(
        borderRadius: BorderRadius.circular(5),

        onTap: () {},

        child: Container(
          width: 50,
          height: 55,

          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(5),

            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),

          child: Icon(icon, color: Color(0xFF4B1FA7), size: 30),
        ),
      ),

      SizedBox(height: 2),

      Text(
        texto,
        style: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4B1FA7),
        ),
      ),
    ],
  );
}

Widget produtos(String nome, String preco, String imagem) {
  return Container(
    width: 115,

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),

      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
      ],
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // IMAGEM + FAVORITO
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(18)),

              child: Container(
                height: 110,
                width: double.infinity,
                color: Colors.grey.shade100,

                child: Image.asset(imagem, fit: BoxFit.cover),
              ),
            ),

            Positioned(
              top: 8,
              right: 8,

              child: Container(
                width: 24,
                height: 24,

                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.favorite_border,
                  size: 14,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(8),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // NOME
              SizedBox(
                height: 15,

                child: Text(
                  nome,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),

              SizedBox(height: 3),

              // SUBTEXTO
              Text(
                "100% algodão • Premium",
                style: TextStyle(fontSize: 8, color: Colors.grey[600]),
              ),

              SizedBox(height: 6),

              // PREÇO
              Text(
                preco,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              // ESTRELAS + BOTÃO
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),

                      SizedBox(width: 3),

                      Text(
                        "(86)",
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ],
                  ),

                  Container(
                    width: 20,
                    height: 20,

                    decoration: BoxDecoration(
                      color: Color(0xFF4B1FA7),
                      shape: BoxShape.circle,
                    ),

                    child: Icon(Icons.add, color: Colors.white, size: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
