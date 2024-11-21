package gameOfLife.model.generator;

import gameOfLife.model.gDSL.CellState;
import gameOfLife.model.gDSL.Grid;
import gameOfLife.model.gDSL.Model;
import gameOfLife.model.gDSL.Range;
import gameOfLife.model.gDSL.Rule;
import java.util.Objects;
import org.eclipse.emf.common.util.EList;
import org.eclipse.xtend2.lib.StringConcatenation;

@SuppressWarnings("all")
public class TextGenerator {
  public static CharSequence toText(final Model root) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("package GameOfLife;");
    _builder.newLine();
    _builder.newLine();
    _builder.append("import java.awt.Point;");
    _builder.newLine();
    _builder.append("import java.util.ArrayList;");
    _builder.newLine();
    _builder.append("import java.util.Arrays;");
    _builder.newLine();
    _builder.newLine();
    _builder.append("public class RulesOfLife {");
    _builder.newLine();
    _builder.newLine();
    _builder.append("    ");
    _builder.append("public static void computeSurvivors(boolean[][] gameBoard, ArrayList<Point> survivingCells) {");
    _builder.newLine();
    _builder.append("        ");
    _builder.append("for (int i = 1; i < gameBoard.length - 1; i++) {");
    _builder.newLine();
    _builder.append("            ");
    _builder.append("for (int j = 1; j < gameBoard[0].length - 1; j++) {");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("int surrounding = 0;");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i-1][j-1] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i-1][j] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i-1][j+1] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i][j-1] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i][j+1] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i+1][j-1] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i+1][j] ? 1 : 0);");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("surrounding += (gameBoard[i+1][j+1] ? 1 : 0);");
    _builder.newLine();
    _builder.newLine();
    _builder.append("                ");
    _builder.append("applyRules(gameBoard, survivingCells, i, j, surrounding);");
    _builder.newLine();
    _builder.append("            ");
    _builder.append("}");
    _builder.newLine();
    _builder.append("        ");
    _builder.append("}");
    _builder.newLine();
    _builder.append("    ");
    _builder.append("}");
    _builder.newLine();
    _builder.newLine();
    _builder.append("    ");
    _builder.append("private static void applyRules(boolean[][] gameBoard, ArrayList<Point> survivingCells, int i, int j, int surrounding) {");
    _builder.newLine();
    _builder.append("        ");
    CharSequence _generateRuleLogic = TextGenerator.generateRuleLogic(root.getRules());
    _builder.append(_generateRuleLogic, "        ");
    _builder.newLineIfNotEmpty();
    _builder.append("    ");
    _builder.append("}");
    _builder.newLine();
    _builder.append("    ");
    _builder.newLine();
    _builder.append("    ");
    _builder.append("public static ArrayList<Point> getCoordinates() {");
    _builder.newLine();
    _builder.append("                    ");
    _builder.append("ArrayList<Point> coordinates;");
    _builder.newLine();
    {
      Grid _grid = root.getGrid();
      boolean _notEquals = (!Objects.equals(_grid, null));
      if (_notEquals) {
        _builder.append("                    ");
        _builder.append("coordinates = new ArrayList<>(Arrays.asList(");
        _builder.newLine();
        _builder.append("                    ");
        _builder.append("    ");
        CharSequence _generateCoordinateLogic = TextGenerator.generateCoordinateLogic(root.getGrid());
        _builder.append(_generateCoordinateLogic, "                        ");
        _builder.newLineIfNotEmpty();
        _builder.append("                    ");
        _builder.append("));");
        _builder.newLine();
      } else {
        _builder.append("                    ");
        _builder.append("coordinates = new ArrayList<>();");
        _builder.newLine();
        _builder.append("                    ");
        _builder.append("System.out.println(\"No grid defined in the DSL.\");");
        _builder.newLine();
      }
    }
    _builder.append("                    ");
    _builder.append("return coordinates;");
    _builder.newLine();
    _builder.append("                ");
    _builder.append("}");
    _builder.newLine();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }

  public static CharSequence generateRuleLogic(final Iterable<Rule> rules) {
    StringConcatenation _builder = new StringConcatenation();
    {
      for(final Rule rule : rules) {
        _builder.append("if ((");
        String _stateCondition = TextGenerator.getStateCondition(rule.getState());
        _builder.append(_stateCondition);
        _builder.append(") && (surrounding ");
        String _translateOperator = TextGenerator.translateOperator(rule.getCondition().getOperator().getLiteral());
        _builder.append(_translateOperator);
        _builder.append(" ");
        int _value = rule.getCondition().getValue();
        _builder.append(_value);
        _builder.append(")) {");
        _builder.newLineIfNotEmpty();
        _builder.append("    ");
        _builder.append("survivingCells.add(new Point(i-1, j-1));");
        _builder.newLine();
        _builder.append("}");
        _builder.newLine();
      }
    }
    return _builder;
  }

  public static String getStateCondition(final CellState state) {
    boolean _equals = Objects.equals(state, CellState.ALIVE);
    if (_equals) {
      return "gameBoard[i][j]";
    } else {
      return "!gameBoard[i][j]";
    }
  }

  public static String translateOperator(final String operator) {
    if (operator != null) {
      switch (operator) {
        case "=":
          return "==";
        default:
          return operator;
      }
    } else {
      return operator;
    }
  }

  public static CharSequence generateCoordinateLogic(final Grid grid) {
    StringConcatenation _builder = new StringConcatenation();
    {
      EList<Range> _ranges = grid.getRanges();
      boolean _hasElements = false;
      for(final Range range : _ranges) {
        if (!_hasElements) {
          _hasElements = true;
        } else {
          _builder.appendImmediate(",", "");
        }
        _builder.append("new Point(");
        int _start = range.getStart();
        _builder.append(_start);
        _builder.append(", ");
        int _end = range.getEnd();
        _builder.append(_end);
        _builder.append(")");
        _builder.newLineIfNotEmpty();
      }
    }
    return _builder;
  }
}
