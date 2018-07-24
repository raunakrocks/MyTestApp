//
//  ViewController.swift
//  MyTestApp
//
//  Created by Raunak Talwar on 24/07/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let customView = MyCustomView(label1Text: "label1", label2Text: "label2")
        customView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView)
        NSLayoutConstraint.activate(customView.constraintsToFillSuperview(marginH: 8.0, marginV: 8.0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

