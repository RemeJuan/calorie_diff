part of 'app.dart';

void _showAboutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.8),
    builder: (_) {
      return AlertDialog(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Info",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: RichText(
          softWrap: true,
          text: const TextSpan(
            children: [
              TextSpan(
                text:
                    "This app requires certain Health Data in order to function correctly. ",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextSpan(
                text: "\n\n",
              ),
              TextSpan(
                text:
                    "If the data does not look correct, is is always 0, ensure that the app the correct access. ",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextSpan(
                text: "\n\n",
              ),
              TextSpan(
                text:
                    "Please check Settings > Health > Calorie Diff, and make sure all 3 values are enabled. ",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      );
    },
  );
}
