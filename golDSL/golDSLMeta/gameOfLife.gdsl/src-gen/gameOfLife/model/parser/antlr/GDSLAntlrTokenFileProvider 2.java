/*
 * generated by Xtext 2.36.0
 */
package gameOfLife.model.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class GDSLAntlrTokenFileProvider implements IAntlrTokenFileProvider {

	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
		return classLoader.getResourceAsStream("gameOfLife/model/parser/antlr/internal/InternalGDSL.tokens");
	}
}