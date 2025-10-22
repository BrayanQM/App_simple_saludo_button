import 'package:flutter/material.dart';

class SaludoPage extends StatelessWidget {
  const SaludoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono decorativo
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.card_giftcard_rounded,
                  size: 40,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 30),

              // Título principal
              const Text(
                '¡Felicidades!',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 10),

              // Subtítulo
              const Text(
                'Ten tu regalo especial 🎁',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 40),

              // Contenedor para el GIF con mejor estilo
              Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.purple.withOpacity(0.05),
                      Colors.blue.withOpacity(0.05),
                    ],
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3cTM5Y21nNXBjazE0ZHE1c3JpZGEzMDV5ZHRnMmluamcxZWJzd3A4YiZlcD12MV9naWZzX3JlbGF0ZWQmY3Q9Zw/syACLjmzZSLkknOe6v/giphy.gif',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.purple,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Botón para regresar
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    elevation: 8,
                    shadowColor: Colors.purple.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back_rounded, size: 20),
                      SizedBox(width: 8),
                      Text('Volver al Inicio'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Mensaje adicional
              const Text(
                '¡Esperamos que te guste!',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
