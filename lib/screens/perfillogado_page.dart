import 'package:flutter/material.dart';
import 'package:projf_lojaarcana/screens/login_page.dart';
import 'package:projf_lojaarcana/screens/inicio_page.dart';

class PerfilLogado extends StatefulWidget {

  final String nome;
  final String email;

  const PerfilLogado({
    super.key,
    required this.nome,
    required this.email,
  });

  @override
  State<PerfilLogado> createState() => _PerfilLogadoState();
}

class _PerfilLogadoState extends State<PerfilLogado> {

  @override
  void initState() {
    super.initState();

    if (widget.email.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // TOPO PERFIL
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.white,

                      child: Image.asset(
                        "asset/images/logo_arcana.png",
                        fit: BoxFit.contain,
                      ),
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            (widget.nome),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4B1FA7),
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            (widget.email),
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // BOTÃO DESLOGAR
                    IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context, 
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (route) => false,
                          );
                      },

                      icon: Icon(
                        Icons.logout,
                        color: Color(0xFF4B1FA7),
                        size: 28,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // TÍTULO PEDIDOS
                Text(
                  "Meus pedidos",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B1464),
                  ),
                ),

                SizedBox(height: 15),

                // CARD PEDIDOS
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.local_shipping_outlined,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("A caminho"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Entregues"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.access_time_outlined,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Em processamento"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.cancel_outlined,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Cancelados"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // MINHA CONTA
                Text(
                  "Minha conta",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B1464),
                  ),
                ),

                SizedBox(height: 15),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person_outline,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Dados pessoais"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Endereços"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.credit_card_outlined,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Métodos de pagamento"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.favorite_border,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Favoritos"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // SUPORTE
                Text(
                  "Suporte",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B1464),
                  ),
                ),

                SizedBox(height: 15),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.help_outline,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Central de ajuda"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.chat_bubble_outline,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Fale conosco"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Color(0xFF4B1FA7),
                        ),

                        title: Text("Sobre a Loja Arcana"),

                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,

        onTap: (index) {
          // VOLTAR PARA INÍCIO
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const InicioPage(),
              ),
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
    );
  }
}
