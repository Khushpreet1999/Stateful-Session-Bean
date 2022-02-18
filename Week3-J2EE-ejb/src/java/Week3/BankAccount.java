/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatefulEjbClass.java to edit this template
 */
package Week3;

import javax.ejb.Stateful;

/**
 *
 * @author khushpreetkaurgulati
 */
@Stateful
public class BankAccount implements BankAccountRemote {

float totalAmount = 0;   
@Override
public float deposit(float amount)
{
  totalAmount = totalAmount + amount;
  return totalAmount;
}
@Override
public float withdraw(float amount)
{
 totalAmount = totalAmount - amount;
return totalAmount;
}

}
