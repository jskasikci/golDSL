package GameOfLife;

import java.awt.Point;
import java.util.ArrayList;
import java.util.Arrays;

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
        if ((gameBoard[i][j]) && (surrounding == 2)) {
            survivingCells.add(new Point(i-1, j-1));
        }
        if ((gameBoard[i][j]) && (surrounding == 3)) {
            survivingCells.add(new Point(i-1, j-1));
        }
        if ((!gameBoard[i][j]) && (surrounding < 3)) {
            survivingCells.add(new Point(i-1, j-1));
        }
    }
    
    public static ArrayList<Point> getCoordinates() {
                    ArrayList<Point> coordinates;
                    coordinates = new ArrayList<>(Arrays.asList(
                        new Point(0, 5),
                        new Point(6, 10),
                        new Point(2, 8)
                    ));
                    return coordinates;
                }
}
