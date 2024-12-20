/*
 * generated by Xtext 2.36.0
 */
package gameOfLife.model.ide

import com.google.inject.Guice
import gameOfLife.model.GDSLRuntimeModule
import gameOfLife.model.GDSLStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class GDSLIdeSetup extends GDSLStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new GDSLRuntimeModule, new GDSLIdeModule))
	}
	
}
