//
//  UIView+.swift
//  What3Keywords
//
//  Created by Yunsu Guk on 2020/05/28.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for subview in views {
            addSubview(subview)
        }
    }
}
