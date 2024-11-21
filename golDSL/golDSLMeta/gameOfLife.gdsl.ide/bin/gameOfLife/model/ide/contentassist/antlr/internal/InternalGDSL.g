/*
 * generated by Xtext 2.36.0
 */
grammar InternalGDSL;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package gameOfLife.model.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package gameOfLife.model.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import gameOfLife.model.services.GDSLGrammarAccess;

}
@parser::members {
	private GDSLGrammarAccess grammarAccess;

	public void setGrammarAccess(GDSLGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getGroup()); }
		(rule__Model__Group__0)
		{ after(grammarAccess.getModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleGrid
entryRuleGrid
:
{ before(grammarAccess.getGridRule()); }
	 ruleGrid
{ after(grammarAccess.getGridRule()); } 
	 EOF 
;

// Rule Grid
ruleGrid 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getGridAccess().getGroup()); }
		(rule__Grid__Group__0)
		{ after(grammarAccess.getGridAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRange
entryRuleRange
:
{ before(grammarAccess.getRangeRule()); }
	 ruleRange
{ after(grammarAccess.getRangeRule()); } 
	 EOF 
;

// Rule Range
ruleRange 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRangeAccess().getGroup()); }
		(rule__Range__Group__0)
		{ after(grammarAccess.getRangeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRule
entryRuleRule
:
{ before(grammarAccess.getRuleRule()); }
	 ruleRule
{ after(grammarAccess.getRuleRule()); } 
	 EOF 
;

// Rule Rule
ruleRule 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRuleAccess().getGroup()); }
		(rule__Rule__Group__0)
		{ after(grammarAccess.getRuleAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCondition
entryRuleCondition
:
{ before(grammarAccess.getConditionRule()); }
	 ruleCondition
{ after(grammarAccess.getConditionRule()); } 
	 EOF 
;

// Rule Condition
ruleCondition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConditionAccess().getGroup()); }
		(rule__Condition__Group__0)
		{ after(grammarAccess.getConditionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule CellState
ruleCellState
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCellStateAccess().getAlternatives()); }
		(rule__CellState__Alternatives)
		{ after(grammarAccess.getCellStateAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule RelationalOperator
ruleRelationalOperator
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationalOperatorAccess().getAlternatives()); }
		(rule__RelationalOperator__Alternatives)
		{ after(grammarAccess.getRelationalOperatorAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule Action
ruleAction
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getActionAccess().getAlternatives()); }
		(rule__Action__Alternatives)
		{ after(grammarAccess.getActionAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CellState__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCellStateAccess().getALIVEEnumLiteralDeclaration_0()); }
		('alive')
		{ after(grammarAccess.getCellStateAccess().getALIVEEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getCellStateAccess().getDEADEnumLiteralDeclaration_1()); }
		('dead')
		{ after(grammarAccess.getCellStateAccess().getDEADEnumLiteralDeclaration_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationalOperator__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationalOperatorAccess().getLESS_THANEnumLiteralDeclaration_0()); }
		('<')
		{ after(grammarAccess.getRelationalOperatorAccess().getLESS_THANEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationalOperatorAccess().getEQUALEnumLiteralDeclaration_1()); }
		('=')
		{ after(grammarAccess.getRelationalOperatorAccess().getEQUALEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getRelationalOperatorAccess().getGREATER_THANEnumLiteralDeclaration_2()); }
		('>')
		{ after(grammarAccess.getRelationalOperatorAccess().getGREATER_THANEnumLiteralDeclaration_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Action__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getActionAccess().getSURVIVEEnumLiteralDeclaration_0()); }
		('survive')
		{ after(grammarAccess.getActionAccess().getSURVIVEEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getActionAccess().getBECOME_ALIVEEnumLiteralDeclaration_1()); }
		('becomeAlive')
		{ after(grammarAccess.getActionAccess().getBECOME_ALIVEEnumLiteralDeclaration_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGridAssignment_0()); }
	(rule__Model__GridAssignment_0)?
	{ after(grammarAccess.getModelAccess().getGridAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRulesAssignment_1()); }
	(rule__Model__RulesAssignment_1)*
	{ after(grammarAccess.getModelAccess().getRulesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Grid__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Grid__Group__0__Impl
	rule__Grid__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGridAccess().getGridKeyword_0()); }
	'Grid'
	{ after(grammarAccess.getGridAccess().getGridKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Grid__Group__1__Impl
	rule__Grid__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGridAccess().getRangesAssignment_1()); }
	(rule__Grid__RangesAssignment_1)
	{ after(grammarAccess.getGridAccess().getRangesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Grid__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGridAccess().getGroup_2()); }
	(rule__Grid__Group_2__0)*
	{ after(grammarAccess.getGridAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Grid__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Grid__Group_2__0__Impl
	rule__Grid__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGridAccess().getColonKeyword_2_0()); }
	':'
	{ after(grammarAccess.getGridAccess().getColonKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Grid__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGridAccess().getRangesAssignment_2_1()); }
	(rule__Grid__RangesAssignment_2_1)
	{ after(grammarAccess.getGridAccess().getRangesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Range__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Range__Group__0__Impl
	rule__Range__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRangeAccess().getStartAssignment_0()); }
	(rule__Range__StartAssignment_0)
	{ after(grammarAccess.getRangeAccess().getStartAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Range__Group__1__Impl
	rule__Range__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRangeAccess().getHyphenMinusKeyword_1()); }
	'-'
	{ after(grammarAccess.getRangeAccess().getHyphenMinusKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Range__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRangeAccess().getEndAssignment_2()); }
	(rule__Range__EndAssignment_2)
	{ after(grammarAccess.getRangeAccess().getEndAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__0__Impl
	rule__Rule__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getStateAssignment_0()); }
	(rule__Rule__StateAssignment_0)
	{ after(grammarAccess.getRuleAccess().getStateAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__1__Impl
	rule__Rule__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getRuleAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__2__Impl
	rule__Rule__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getConditionAssignment_2()); }
	(rule__Rule__ConditionAssignment_2)
	{ after(grammarAccess.getRuleAccess().getConditionAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__3__Impl
	rule__Rule__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getColonKeyword_3()); }
	':'
	{ after(grammarAccess.getRuleAccess().getColonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getActionAssignment_4()); }
	(rule__Rule__ActionAssignment_4)
	{ after(grammarAccess.getRuleAccess().getActionAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Condition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Condition__Group__0__Impl
	rule__Condition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Condition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConditionAccess().getOperatorAssignment_0()); }
	(rule__Condition__OperatorAssignment_0)
	{ after(grammarAccess.getConditionAccess().getOperatorAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Condition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Condition__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Condition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConditionAccess().getValueAssignment_1()); }
	(rule__Condition__ValueAssignment_1)
	{ after(grammarAccess.getConditionAccess().getValueAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__GridAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGridGridParserRuleCall_0_0()); }
		ruleGrid
		{ after(grammarAccess.getModelAccess().getGridGridParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__RulesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getRulesRuleParserRuleCall_1_0()); }
		ruleRule
		{ after(grammarAccess.getModelAccess().getRulesRuleParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__RangesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGridAccess().getRangesRangeParserRuleCall_1_0()); }
		ruleRange
		{ after(grammarAccess.getGridAccess().getRangesRangeParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Grid__RangesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGridAccess().getRangesRangeParserRuleCall_2_1_0()); }
		ruleRange
		{ after(grammarAccess.getGridAccess().getRangesRangeParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__StartAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRangeAccess().getStartINTTerminalRuleCall_0_0()); }
		RULE_INT
		{ after(grammarAccess.getRangeAccess().getStartINTTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Range__EndAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRangeAccess().getEndINTTerminalRuleCall_2_0()); }
		RULE_INT
		{ after(grammarAccess.getRangeAccess().getEndINTTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__StateAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getStateCellStateEnumRuleCall_0_0()); }
		ruleCellState
		{ after(grammarAccess.getRuleAccess().getStateCellStateEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__ConditionAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getConditionConditionParserRuleCall_2_0()); }
		ruleCondition
		{ after(grammarAccess.getRuleAccess().getConditionConditionParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__ActionAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getActionActionEnumRuleCall_4_0()); }
		ruleAction
		{ after(grammarAccess.getRuleAccess().getActionActionEnumRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Condition__OperatorAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConditionAccess().getOperatorRelationalOperatorEnumRuleCall_0_0()); }
		ruleRelationalOperator
		{ after(grammarAccess.getConditionAccess().getOperatorRelationalOperatorEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Condition__ValueAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConditionAccess().getValueINTTerminalRuleCall_1_0()); }
		RULE_INT
		{ after(grammarAccess.getConditionAccess().getValueINTTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
