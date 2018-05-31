//
//  UIViewHelper.swift
//  NibSetup
//
//  Created by Neo on 31/05/2018.
//  Copyright © 2018 STH. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    static func instantiateFromNib<T: UIView>() ->  T {
        if let view = Bundle(for: self).loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as? T {
            return view
        } else {
            assert(false, "The nib named \(self) is not found")
            return T()
        }
    }
}
