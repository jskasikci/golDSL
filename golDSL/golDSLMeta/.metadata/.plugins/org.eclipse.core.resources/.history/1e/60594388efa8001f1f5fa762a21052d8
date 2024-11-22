package gameOfLife.model.generator

import java.util.ArrayList
import java.util.List
import gameOfLife.model.gDSL.Model
import gameOfLife.model.gDSL.Action
import gameOfLife.model.gDSL.Rule

class Auxiliary {
    def static List<Action> getActions(Model root) {
        var List<Action> actionList = new ArrayList<Action>()

        for (Rule r : root.rules) {
            actionList.add(r.action)
        }

        return actionList;
    }
}