/*
 * generated by Xtext 2.36.0
 */
package gameOfLife.model


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class GDSLStandaloneSetup extends GDSLStandaloneSetupGenerated {

	def static void doSetup() {
		new GDSLStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}