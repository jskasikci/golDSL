/*
 * generated by Xtext 2.36.0
 */
package gameOfLife.model.ui;

import com.google.inject.Injector;
import gameOfLife.gdsl.ui.internal.GdslActivator;
import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkUtil;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class GDSLExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return FrameworkUtil.getBundle(GdslActivator.class);
	}
	
	@Override
	protected Injector getInjector() {
		GdslActivator activator = GdslActivator.getInstance();
		return activator != null ? activator.getInjector(GdslActivator.GAMEOFLIFE_MODEL_GDSL) : null;
	}

}
