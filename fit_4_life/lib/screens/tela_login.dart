import 'package:fit4life_app/screens/tela_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Fit4LifeApp());
}

class Fit4LifeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaLogin(role: 'usuário'), // Exemplo de uso do construtor role
      debugShowCheckedModeBanner: false,
    );
  }
}

class TelaLogin extends StatefulWidget {
  final String role; // Propriedade role para definir o tipo de usuário

  const TelaLogin({super.key, required this.role});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<TelaLogin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // Placeholder for illustration
            Container(
              height: 150,
              color: Colors.grey[300],
              child: Center(
                child: Image.asset('assets/images/Imagem tela login.png',
                    height: 100), // Add a placeholder asset.
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color.fromARGB(204, 193, 22, 22),
              tabs: const [
                Tab(text: "Login"),
                Tab(text: "Cadastre-se"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Login Tab
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Exibe a role do usuário
                        Text(
                          "Tipo de Usuário: ${widget.role}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Login with Google button
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset('assets/images/google.png',
                              height: 24), // Replace with Google logo
                          label: const Text("Fazer login com Google"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 50),
                            side: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Login with Apple button
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon:
                              Icon(Icons.apple, size: 24, color: Colors.black),
                          label: const Text("Fazer login com Apple"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 50),
                            side: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text("Ou continue com o e-mail"),
                        const SizedBox(height: 20),
                        // Email field
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "E-mail",
                            prefixIcon: const Icon(Icons.email),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Password field
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Senha",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.visibility),
                              onPressed: () {},
                            ),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text("Esqueci a senha"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Login button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(204, 193, 22, 22),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text("Login",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  // Cadastre-se Tab
                  Center(
                    child: Text("Tela de Cadastro (em construção)"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
