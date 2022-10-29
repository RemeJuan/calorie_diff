import 'dart:io';

dynamic main() {
  final rootDir = Directory.current;
  final commitFile = File("${rootDir.path}/.git/COMMIT_EDITMSG");
  final commitMessage = commitFile.readAsStringSync();

  final regExp = RegExp(
    r'(break|feat|fix|chore|docs|style|refactor|perf|test|ci)\(.+\):\s(\[Loop-?\d+])?.+',
  );

  if (commitMessage.contains('Merge')) return;

  final valid = regExp.hasMatch(commitMessage);
  if (!valid) exitCode = 1;
}
