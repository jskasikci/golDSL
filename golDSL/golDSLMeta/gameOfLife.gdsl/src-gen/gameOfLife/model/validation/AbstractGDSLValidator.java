/*
 * generated by Xtext 2.36.0
 */
package gameOfLife.model.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.validation.AbstractDeclarativeValidator;

public abstract class AbstractGDSLValidator extends AbstractDeclarativeValidator {
	
	@Override
	protected List<EPackage> getEPackages() {
		List<EPackage> result = new ArrayList<EPackage>();
		result.add(gameOfLife.model.gDSL.GDSLPackage.eINSTANCE);
		return result;
	}
}
