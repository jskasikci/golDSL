package gameOfLife.model.generator;

import gameOfLife.model.gDSL.Model;
import gameOfLife.model.gDSL.Rule;
import gameOfLife.model.gDSL.CellState;
import gameOfLife.model.gDSL.Grid;
import gameOfLife.model.gDSL.RelationalOperator;
import gameOfLife.model.gDSL.Action;

class RuleGenerator {

    def static CharSequence toText(Model root) '''
        package GameOfLife;

        import java.awt.Point;
        import java.util.Arrays;
        import java.util.ArrayList;

        public class RulesOfLife {

            public static void computeSurvivors(boolean[][] gameBoard, ArrayList<Point> survivingCells) {
                for (int i = 1; i < gameBoard.length - 1; i++) {
                    for (int j = 1; j < gameBoard[0].length - 1; j++) {
                        int surrounding = 0;
                        surrounding += (gameBoard[i-1][j-1] ? 1 : 0);
                        surrounding += (gameBoard[i-1][j] ? 1 : 0);
                        surrounding += (gameBoard[i-1][j+1] ? 1 : 0);
                        surrounding += (gameBoard[i][j-1] ? 1 : 0);
                        surrounding += (gameBoard[i][j+1] ? 1 : 0);
                        surrounding += (gameBoard[i+1][j-1] ? 1 : 0);
                        surrounding += (gameBoard[i+1][j] ? 1 : 0);
                        surrounding += (gameBoard[i+1][j+1] ? 1 : 0);

                        applyRules(gameBoard, survivingCells, i, j, surrounding);
                    }
                }
            }

            private static void applyRules(boolean[][] gameBoard, ArrayList<Point> survivingCells, int i, int j, int surrounding) {
                «generateRuleLogic(root.rules)»
            }

            public static ArrayList<Point> getCoordinates() {
                ArrayList<Point> coordinates;
                «IF root.grid !== null»
                coordinates = new ArrayList<>(Arrays.asList(
                    «generateCoordinateLogic(root.grid)»
                ));
                «ELSE»
                coordinates = new ArrayList<>();
                «ENDIF»
                return coordinates;
            }
        }
    '''

    def static CharSequence generateRuleLogic(Iterable<Rule> rules) '''
        «FOR rule : rules»
        if ((«translateState(rule.state)») && (surrounding «translateOperator(rule.condition.operator)» «rule.condition.value»)) {
            «translateAction(rule.action)»
        }
        «ENDFOR»
    '''

    def static String translateState(CellState state) {
        return if (state == CellState.ALIVE) "gameBoard[i][j]" else "!gameBoard[i][j]"
    }

    def static String translateOperator(RelationalOperator operator) {
        switch (operator) {
            case GREATER_THAN: return ">"
            case LESS_THAN: return "<"
            case EQUAL: return "=="
        }
    }

    def static CharSequence translateAction(Action action) '''
        «IF action == Action.SURVIVE»
        survivingCells.add(new Point(i-1, j-1));
        «ELSEIF action == Action.BECOME_ALIVE»
        survivingCells.add(new Point(i-1, j-1));
        «ENDIF»
    '''

    def static CharSequence generateCoordinateLogic(Grid grid) '''
        «FOR range : grid.ranges SEPARATOR ","»
        new Point(«range.start», «range.end»)
        «ENDFOR»
    '''
}
