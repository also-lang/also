import 'additionals.dart';
import 'expression.dart';
import 'fn_defn.dart';
import 'ifelseladder.dart';
import 'parser.dart';
import 'print_statement.dart';
import 'return_statement.dart';
import '../tokens.dart';
import 'variable_assign.dart';
import 'variable_dec.dart';
import 'while_loop.dart';

void Stmt() {
  if (tokens[currentToken].type == TokenType.VAR) {
    V();
  } else if (tokens[currentToken].type == TokenType.IF) {
    IfStmt();
  } else if (tokens[currentToken].type == TokenType.WHILE) {
    WhileStmt();
  } else if (tokens[currentToken].type == TokenType.PRINT) {
    PrintStmt();
  } else if (tokens[currentToken].type == TokenType.RETURN) {
    ReturnStmt();
  } else if (tokens[currentToken].type == TokenType.FUNCTION) {
    FuncDef();
  } else if (tokens[currentToken].type == TokenType.IDENTIFIER &&
      tokens[currentToken + 1].type == TokenType.ASSIGN_OP) {
    A();
  } else {
    dynamic result = E();
    printK("Expression result: $result");
  }
}