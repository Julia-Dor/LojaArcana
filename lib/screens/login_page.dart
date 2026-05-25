import 'package:flutter/material.dart';
import 'package:projf_lojaarcana/screens/cadastro_page.dart';
import 'package:projf_lojaarcana/screens/esqueceusenha_page.dart';
import 'package:projf_lojaarcana/screens/perfillogado_page.dart';

final TextEditingController emailController = TextEditingController();

final TextEditingController senhaController = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // IMAGEM DE FUNDO
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/fundo_login.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SETA
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFF4B1FA7)),
            ),
          ),

          // CONTEÚDO
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // LOGO
                  Image.asset("asset/images/logo_arcana.png", height: 150),

                  SizedBox(height: 10),

                  // TEXTO LOGIN
                  Text(
                    "Bem-vindo(a) de volta!",
                    style: TextStyle(
                      color: Color(0xFF4B1FA7),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Faça login para continuar",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),

                  SizedBox(height: 20),

                  // EMAIL
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "E-mail",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  // SENHA
                  TextField(
                    controller: senhaController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      labelText: "Senha",

                      prefixIcon: Icon(Icons.lock),

                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),

                  // ESQUECEU SENHA
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EsqueceuSenhaPage(),
                            ),
                          );
                        },

                        child: Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                            color: Color(0xFF4B1FA7),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // BOTÃO ENTRAR
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
                       if (
                        emailController.text == Usuario.email &&
                        senhaController.text == Usuario.senha
                      ) {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PerfilLogado(
                              nome: Usuario.nome,
                              email: Usuario.email,
                            ),
                          ),
                        );

                      } else {

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Email ou senha incorretos"),
                          ),
                        );
                      }
                    },

                    child: Text("Entrar"),
                  ),

                  SizedBox(height: 25),

                  // CADASTRO
                  Text(
                    "Ainda não tem uma conta? ",
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.deepPurple,
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CadastroPage()),
                      );
                    },

                    child: Text(
                      "Criar conta",
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
