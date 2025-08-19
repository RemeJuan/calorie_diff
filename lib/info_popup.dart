part of 'app.dart';

void _showAboutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withAlpha((0.8 * 255).toInt()),
    builder: (_) {
      return AlertDialog(
        backgroundColor: Colors.blueGrey,
        title: Text(
          S.of(context).info_heading,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          S.of(context).info_text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    },
  );
}
