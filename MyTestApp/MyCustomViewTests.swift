//
//  MyCustomViewTests.swift
//  MyTestAppTests
//
//  Created by Raunak Talwar on 24/07/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//
@testable import MyTestApp
import LayoutTest
import XCTest

class MyCustomViewTests: LayoutTestCase {
    func testMyCustomViewLayout() {
        runLayoutTests { (view: MyCustomView, _: [AnyHashable: Any], _: Any?) in
            
        }
    }
    
}

extension MyCustomView: ViewProvider {
    public static func dataSpecForTest() -> [AnyHashable : Any] {
        return ["label1": StringValues(),
                "label2": StringValues()]
    }
    
    public static func sizesForView() -> [ViewSize] {
        return [ViewSize(width: LYTiPhone5Width, height: 50.0)]
    }
    
    public static func view(forData data: [AnyHashable : Any],
                            reuse reuseView: UIView?,
                            size: ViewSize?,
                            context: AutoreleasingUnsafeMutablePointer<AnyObject?>?) -> UIView {
        let label1Text = data["label1"] as? String
        let label2Text = data["label2"] as? String
        let view = MyCustomView(label1Text: label1Text ?? "", label2Text: label2Text ?? "")
        return view
    }
}
