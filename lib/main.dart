import 'package:flutter/material.dart';

void main() => runApp(appdieta());

class appdieta extends StatelessWidget {
  const appdieta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dietas',
      debugShowCheckedModeBanner: false,
      home: Dietas(),
    );
  }
}// fin clase appdieta
 
class Dietas extends StatelessWidget {
  const Dietas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Color de fondo del AppBar
        backgroundColor: Colors.black,

        // Icono a la izquierda (Leading)
        leading: const Icon(
          Icons.apple,
          color: Colors.lime, // Manzana verde
        ),

        // Título de la aplicación
        title: const Text(
          'Easy Diet',
          style: TextStyle(
            color: Colors.lime, // Texto en blanco
            fontWeight: FontWeight.bold,
          ),
        ),

        // Iconos a la derecha (Actions)
        actions: [
          IconButton(
            icon: const Icon(Icons.assignment), // Planes
            color: Colors.lime,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.calendar_month), // Calendario
            color: Colors.lime,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.restaurant_menu), // Platillos
            color: Colors.lime,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
  color: const Color.fromARGB(255, 12, 12, 12), // Fondo negro puro
  child: ListView(
    padding: const EdgeInsets.all(16.0),
    children: [
      // Elemento 1: Calorías
      Card(
        color: const Color(0xFF1E1E1E), // Gris oscuro secundario
        child: ListTile(
          leading: const Icon(Icons.local_fire_department, color: Colors.limeAccent),
          title: const Text('Objetivo Diario', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text('1,800 / 2,200 kcal consumidas', style: TextStyle(color: Colors.grey)),
          trailing: const Icon(Icons.chevron_right, color: Colors.limeAccent),
        ),
      ),
      
      // Elemento 2: Hidratación
      Card(
        color: const Color(0xFF1E1E1E),
        child: ListTile(
          leading: const Icon(Icons.water_drop, color: Colors.limeAccent),
          title: const Text('Hidratación', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text('6 de 8 vasos de agua', style: TextStyle(color: Colors.grey)),
          trailing: const Icon(Icons.add_circle_outline, color: Colors.limeAccent),
        ),
      ),

      // Elemento 3: Desayuno
      Card(
        color: const Color(0xFF1E1E1E),
        child: ListTile(
          leading: const Icon(Icons.egg_alt, color: Colors.limeAccent),
          title: const Text('Desayuno Proteico', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text('Huevos, aguacate y avena', style: TextStyle(color: Colors.grey)),
          trailing: const Icon(Icons.check_circle, color: Colors.limeAccent),
        ),
      ),

      // Elemento 4: Macronutrientes
      Card(
        color: const Color(0xFF1E1E1E),
        child: ListTile(
          leading: const Icon(Icons.pie_chart, color: Colors.limeAccent),
          title: const Text('Macronutrientes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text('P: 30% | C: 45% | G: 25%', style: TextStyle(color: Colors.grey)),
          trailing: const Icon(Icons.bar_chart, color: Colors.limeAccent),
        ),
      ),

      // Elemento 5: Ayuno Intermitente
      Card(
        color: const Color(0xFF1E1E1E),
        child: ListTile(
          leading: const Icon(Icons.timer, color: Colors.limeAccent),
          title: const Text('Ayuno Intermitente', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text('Faltan 2h para terminar', style: TextStyle(color: Colors.grey)),
          trailing: const Icon(Icons.more_vert, color: Colors.limeAccent),
        ),
      ),
    ],
  ),
),
    );
  }
}// fin clase nutriologos