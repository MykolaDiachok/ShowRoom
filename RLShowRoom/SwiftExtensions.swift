//
//  SwiftExtensions.swift
//  RLShowRoom
//
//  Created by Mikola Dyachok on 24/09/2016.
//  Copyright © 2016 Mykola Diachok. All rights reserved.
//

import Foundation

extension UITextField{
    public func setLeftImage(imageName:String)
    {
        let img = UIImageView(image: UIImage(named: imageName))
        img.frame = CGRect(x: 0, y: 5, width: 30, height: 20)
        img.contentMode = .scaleAspectFit
        
        
        self.leftViewMode = .always
        self.leftView = img
        self.contentMode = .scaleAspectFit
    }
}
//UITextViewDelegate
extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    func animateViewMoving (up:Bool, moveValue :CGFloat) {
        let movementDuration:TimeInterval = 0.3
        let movement:CGFloat = ( up ? -moveValue : moveValue)
        UIView.beginAnimations( "animateView", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(movementDuration )
        self.view.frame = self.view.frame.offsetBy(dx: 0,  dy: movement)
        UIView.commitAnimations()
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if range.length + range.location > (textField.text?.characters.count)! {
            return false
        }
        
        let newLength = (textField.text?.characters.count)! + string.characters.count - range.length
        return newLength <= 30
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        //currentResponder = textField
        animateViewMoving(up: true, moveValue: 100)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        textField.resignFirstResponder()
        animateViewMoving(up: false, moveValue: 100)
    }
    
}
