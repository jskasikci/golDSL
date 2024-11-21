package gameOfLife.model.generator;

import gameOfLife.model.gDSL.Action;
import gameOfLife.model.gDSL.Model;
import gameOfLife.model.gDSL.Rule;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.common.util.EList;

@SuppressWarnings("all")
public class Auxiliary {
  public static List<Action> getActions(final Model root) {
    List<Action> actionList = new ArrayList<Action>();
    EList<Rule> _rules = root.getRules();
    for (final Rule r : _rules) {
      actionList.add(r.getAction());
    }
    return actionList;
  }
}
