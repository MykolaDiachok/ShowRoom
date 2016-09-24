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
