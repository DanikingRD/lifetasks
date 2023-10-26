import 'dart:io';

import 'package:logger/logger.dart';

final logger = Logger(
  printer: AppLogPrinter(),
);

void trace(String message) {
  logger.t(message);
}

void debug(String message) {
  logger.d(message);
}

void info(String message) {
  logger.i(message);
}

void warn(String message) {
  logger.w(message);
}

void error(String message) {
  logger.e(message);
}

void fatal(String message) {
  logger.f(message);
}

class AppLogPrinter extends LogPrinter {
  static final Map<Level, AnsiColor> colors = {
    Level.trace: AnsiColor.fg(AnsiColor.grey(0.5)),
    Level.debug: const AnsiColor.fg(32),
    Level.info: const AnsiColor.fg(34),
    Level.warning: const AnsiColor.fg(208),
    Level.error: const AnsiColor.fg(196),
    Level.fatal: const AnsiColor.fg(197),
  };

  static final Map<Level, String> emojis = {
    Level.trace: '',
    Level.debug: '🐛',
    Level.info: '💡',
    Level.warning: '⚠️',
    Level.error: '🚨',
    Level.fatal: '💀',
  };

  AppLogPrinter() : super();

  @override
  List<String> log(LogEvent event) {
    final color = AppLogPrinter.colors[event.level]!;
    final emoji = AppLogPrinter.emojis[event.level]!;
    final emojiOutput = emoji.replaceAll(' ', '');
    final message = event.message;
    final time = DateTime.now().toUtc();
    String currentPath = Platform.script.toFilePath();
    String file = currentPath.split('/').last;
    String level = event.level.name.toUpperCase();
    // format:
    // [YYYY MM DD HH:MM:SS] [FILE/LEVEL] EMOJI MESSAGE
    String emojiPrevSpace = event.level == Level.trace ? "" : " ";
    return [
      color(
        "[${time.year}-${time.month}-${time.day} ${time.hour}:${time.minute}:${time.second}] [$file/$level]$emojiPrevSpace$emojiOutput  $message",
      ),
    ];
  }
}
