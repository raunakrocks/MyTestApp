//
//  MyCustomView.swift
//  MyTestApp
//
//  Created by Raunak Talwar on 24/07/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import UIKit

class MyCustomView: UIView {

    private let label1: UILabel = {
        let weight = UIFont.Weight.regular
        let font = UIFont.systemFont(ofSize: 20.0, weight: weight)
        let label = UILabel(font: font,
                            textColor: .green,
                            backgroundColor: .red)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let label2: UILabel = {
        let weight = UIFont.Weight.regular
        let font = UIFont.systemFont(ofSize: 20.0, weight: weight)
        let label = UILabel(font: font,
                            textColor: .green,
                            backgroundColor: .blue)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(label1Text: String,
         label2Text: String) {
        super.init(frame: CGRect.zero)
        setupViews()
        setupConstraints()
        label1.text = label1Text
        label2.text = label2Text
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Helpers
    
    private func setupViews() {
        addSubview(label1)
        addSubview(label2)
    }
    
    private func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        constraints += [label1.centerYAnchor.constraint(equalTo: centerYAnchor)]
        constraints += [label2.centerYAnchor.constraint(equalTo: centerYAnchor)]
        constraints += [label1.leftAnchor.constraint(equalTo: leftAnchor, constant: 16.0)]
        constraints += [label2.rightAnchor.constraint(equalTo: rightAnchor, constant: -16.0)]
        constraints += [label1.rightAnchor.constraint(lessThanOrEqualTo: label2.leftAnchor)]
        NSLayoutConstraint.activate(constraints)
    }
}
