import 'package:flutter/material.dart';

void main() => runApp(AppArte() );

class AppArte extends StatelessWidget {
  const AppArte({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda de arte',
      home: Vendedores(),
    );
  }
}//Fin de la clase AppArte

class Vendedores extends StatelessWidget {
  const Vendedores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
  title: const Text(
    'Art Store',
    style: TextStyle(color: Colors.white), // Texto color blanco
  ),
  backgroundColor: const Color.fromARGB(255, 150, 96, 87), // Café oscuro (Brown 900)
  leading: const Icon(
    Icons.brush, // Icono de brocha de pintura
    color: Colors.black,
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.brush, color: Color.fromARGB(255, 0, 0, 0)), // Representa el marco
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.format_paint, color: Color.fromARGB(255, 0, 0, 0)), // Representa el pincel/pintar
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.palette, color: Color.fromARGB(255, 7, 0, 0)), // Representa la pintura/paleta
      onPressed: () {},
    ),
  ],
) ,

body: 
  ListView(
  padding: const EdgeInsets.all(16.0), // Espaciado alrededor de la lista
  children: [
    _buildCustomTile(
      title: 'Configuración de Perfil',
      subtitle: 'Edita tu información personal',
      icon: Icons.person_outline,
      color: Colors.blueAccent,
      iconColor: Colors.blueAccent,
    ),
    const SizedBox(height: 10), // Espacio entre cada elemento
    _buildCustomTile(
      title: 'Mis Pedidos',
      subtitle: 'Rastrea tus compras actuales',
      icon: Icons.shopping_bag_outlined,
      color: Colors.orangeAccent,
      iconColor: Colors.orangeAccent,
    ),
    const SizedBox(height: 10),
    _buildCustomTile(
      title: 'Mensajes',
      subtitle: '5 mensajes nuevos sin leer',
      icon: Icons.chat_bubble_outline,
      color: Colors.tealAccent,
      iconColor: Colors.teal,
    ),
    const SizedBox(height: 10),
    _buildCustomTile(
      title: 'Favoritos',
      subtitle: 'Tus productos guardados',
      icon: Icons.favorite_outline,
      color: Colors.pinkAccent,
      iconColor: Colors.pinkAccent,
    ),
    const SizedBox(height: 10),
    _buildCustomTile(
      title: 'Notificaciones',
      subtitle: 'Gestiona tus alertas',
      icon: Icons.notifications_none,
      color: Colors.purpleAccent,
      iconColor: Colors.purpleAccent,
    ),
  ],
)

// --- Función auxiliar para no repetir código (opcional pero recomendada) ---

     

    );//FIn de scaffold
    
  }
  Widget _buildCustomTile({
  required String title,
  required String subtitle,
  required IconData icon,
  required Color color,
  required Color iconColor,
}) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    tileColor: color,
    leading: CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(icon, color: iconColor),
    ),
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Color.fromARGB(255, 0, 0, 0)),
    onTap: () {
      // Acción al presionar
    },
  );
}
}//Fin clase LosClientes

  