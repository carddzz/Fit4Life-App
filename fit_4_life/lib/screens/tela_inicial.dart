import 'package:flutter/material.dart';
import 'tela_login.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/fundo_login.png'), // Nova imagem de fundo
                fit: BoxFit.cover, // Ajusta a imagem ao tamanho da tela
              ),
            ),
          ),
          // Conteúdo da tela
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Logo no topo
                Padding(
                  padding: const EdgeInsets.only(top: 40.0), // Espaço no topo
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png', // Substitua pelo caminho correto da sua logo
                      height: 100, // Ajuste o tamanho conforme necessário
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const Spacer(), // Espaço para empurrar os botões para o meio
                // Botões lado a lado
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centraliza os botões horizontalmente
                  children: [
                    // Botão "Sou Usuário"
                    ElevatedButton(
                      onPressed: () {
                        // Navegar para a Tela 3
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaLogin(
                                role:
                                    "usuário"), // Passar parâmetro se necessário
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 24.0),
                        backgroundColor: const Color.fromARGB(
                            204, 193, 22, 22), // Cor do botão
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        'Sou Usuário',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, // Texto branco
                        ),
                      ),
                    ),
                    const SizedBox(width: 16), // Espaçamento entre os botões
                    // Botão "Sou Profissional"
                    ElevatedButton(
                      onPressed: () {
                        // Navegar para a Tela 3
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaLogin(
                                role:
                                    "profissional"), // Passar parâmetro se necessário
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 24.0),
                        backgroundColor: const Color.fromARGB(
                            204, 193, 22, 22), // Cor do botão
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        'Sou Profissional',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, // Texto branco
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(), // Espaço abaixo dos botões
              ],
            ),
          ),
        ],
      ),
    );
  }
}
