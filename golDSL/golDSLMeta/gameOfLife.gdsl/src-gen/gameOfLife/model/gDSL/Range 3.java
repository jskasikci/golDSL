/**
 * generated by Xtext 2.36.0
 */
package gameOfLife.model.gDSL;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Range</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link gameOfLife.model.gDSL.Range#getStart <em>Start</em>}</li>
 *   <li>{@link gameOfLife.model.gDSL.Range#getEnd <em>End</em>}</li>
 * </ul>
 *
 * @see gameOfLife.model.gDSL.GDSLPackage#getRange()
 * @model
 * @generated
 */
public interface Range extends EObject
{
  /**
   * Returns the value of the '<em><b>Start</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Start</em>' attribute.
   * @see #setStart(int)
   * @see gameOfLife.model.gDSL.GDSLPackage#getRange_Start()
   * @model
   * @generated
   */
  int getStart();

  /**
   * Sets the value of the '{@link gameOfLife.model.gDSL.Range#getStart <em>Start</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Start</em>' attribute.
   * @see #getStart()
   * @generated
   */
  void setStart(int value);

  /**
   * Returns the value of the '<em><b>End</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>End</em>' attribute.
   * @see #setEnd(int)
   * @see gameOfLife.model.gDSL.GDSLPackage#getRange_End()
   * @model
   * @generated
   */
  int getEnd();

  /**
   * Sets the value of the '{@link gameOfLife.model.gDSL.Range#getEnd <em>End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>End</em>' attribute.
   * @see #getEnd()
   * @generated
   */
  void setEnd(int value);

} // Range
