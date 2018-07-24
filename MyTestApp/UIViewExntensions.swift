//
//  UI.swift
//  MyTestApp
//
//  Created by Raunak Talwar on 24/07/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Constraint helpers

public extension UIView {
    
    func constraintsToFillSuperview(equalMargins: CGFloat) -> [NSLayoutConstraint] {
        return constraintsToFillSuperview(marginH: equalMargins, marginV: equalMargins)
    }
    
    func constraintsToFillSuperview(margins: UIEdgeInsets = UIEdgeInsets.zero) -> [NSLayoutConstraint] {
        return constraintsToFillSuperviewHorizontally(leadingMargin: margins.left, trailingMargin: -margins.right)
            + constraintsToFillSuperviewVertically(topMargin: margins.top, bottomMargin: -margins.bottom)
    }
    
    func constraintsToFillSuperview(marginH: CGFloat, marginV: CGFloat) -> [NSLayoutConstraint] {
        return constraintsToFillSuperviewHorizontally(margins: marginH)
            + constraintsToFillSuperviewVertically(margins: marginV)
    }
    
    func constraintsToFillSuperviewHorizontally(margins: CGFloat = 0) -> [NSLayoutConstraint] {
        return constraintsToFillSuperviewHorizontally(leadingMargin: margins, trailingMargin: -margins)
    }
    
    func constraintsToFillSuperviewVertically(margins: CGFloat = 0) -> [NSLayoutConstraint] {
        return constraintsToFillSuperviewVertically(topMargin: margins, bottomMargin: -margins)
    }
    
    func constraintsToFillSuperviewHorizontally(leadingMargin: CGFloat, trailingMargin: CGFloat) -> [NSLayoutConstraint] {
        guard let superview = superview else {
            fatalError("This view does not have a superview: \(self)")
        }
        let leader = leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: leadingMargin)
        let trailer = trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: trailingMargin)
        return [leader, trailer]
    }
    
    func constraintsToFillSuperviewVertically(topMargin: CGFloat, bottomMargin: CGFloat) -> [NSLayoutConstraint] {
        guard let superview = superview else {
            fatalError("This view does not have a superview: \(self)")
        }
        let top = topAnchor.constraint(equalTo: superview.topAnchor, constant: topMargin)
        let bottom = bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: bottomMargin)
        return [top, bottom]
    }
}
