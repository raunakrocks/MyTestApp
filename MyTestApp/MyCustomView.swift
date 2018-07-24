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
        label1.text = label1Text
        label2.text = label2Text
        setupViews()
        setupConstraints()
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
        constraints += [label1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0)]
        constraints += [label2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)]
        NSLayoutConstraint.activate(constraints)
    }
}
