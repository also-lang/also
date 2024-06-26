import 'dart:convert';
import 'dart:io';

import 'lexer/lexer.dart';
import 'macro.dart';
import 'sdt/additionals.dart';
import 'sdt/parser.dart';
import 'shared/tokens.dart';

void main(List<String> arguments) {
  if (arguments.length != 1) {
    print('Usage: also <file_path>');
    return;
  }

  String sourceCode = macro(arguments[0]);

  // Create a lexer instance
  Lexer lexer = Lexer(sourceCode.toString() + " ");

  // Tokenize the source code
  List<Token> token = lexer.scanTokens();
  // print(token);
  // print("\n\n");
  // var m = 0;
  tokens = token;
  // tokens = [
  //   Token("var", TokenType.VAR, m),
  //   Token("arr", TokenType.IDENTIFIER, m++),
  //   Token("[", TokenType.OPEN_BRACKET, m++),
  //   Token("3", TokenType.INTEGER_LITERAL, m++),
  //   Token("]", TokenType.CLOSE_BRACKET, m++),
  //   Token("=", TokenType.ASSIGN_OP, m++),
  //   Token("[", TokenType.OPEN_BRACKET, m++),
  //   Token("1", TokenType.INTEGER_LITERAL, m++),
  //   Token(",", TokenType.COMMA, m++),
  //   Token("2", TokenType.INTEGER_LITERAL, m++),
  //   Token(",", TokenType.COMMA, m++),
  //   Token("3", TokenType.INTEGER_LITERAL, m++),
  //   Token("]", TokenType.CLOSE_BRACKET, m++),
  //   Token(";", TokenType.SEMICOLON, m++),

  //   // Token("arr", TokenType.IDENTIFIER, m++),
  //   // Token("arr", TokenType.IDENTIFIER, m++),
  //   Token("arr", TokenType.IDENTIFIER, m++),
  //   Token("[", TokenType.OPEN_BRACKET, m++),
  //   Token("2", TokenType.INTEGER_LITERAL, m++),
  //   Token("]", TokenType.CLOSE_BRACKET, m++),
  //   Token("=", TokenType.ASSIGN_OP, m++),
  //   // Token("[", TokenType.OPEN_BRACKET, m++),
  //   Token("25", TokenType.INTEGER_LITERAL, m++),
  //   // Token(",", TokenType.COMMA, m++),
  //   // Token("5", TokenType.INTEGER_LITERAL, m++),
  //   // Token(",", TokenType.COMMA, m++),
  //   // Token("6", TokenType.INTEGER_LITERAL, m++),
  //   // Token("]", TokenType.CLOSE_BRACKET, m++),
  //   // Token(";", TokenType.SEMICOLON, m++),
  //   Token("print", TokenType.PRINT, m++),
  //   Token("arr", TokenType.IDENTIFIER, m++),
  //   Token("[", TokenType.OPEN_BRACKET, m++),
  //   Token("2", TokenType.INTEGER_LITERAL, m++),
  //   Token("]", TokenType.CLOSE_BRACKET, m++),
  //   // Token("print", TokenType.PRINT, m++),
  //   // Token("1", TokenType.INTEGER_LITERAL, m++),
  // ];
  // tokens.forEach(print);

  compile();
}
