import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
        
        TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
               label: Text("Informe seu email"),
               border: OutlineInputBorder(),
            ),
          ),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.key),
              hintText: "Informe sua senha",
              label: Text("Informe sua senha"),
               border: OutlineInputBorder(),
            ),
          ),
        
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text("login"),
          ),
        ],
      ),
    );
  }
}