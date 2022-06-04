//
//  ViewController.swift
//  iOSModule
//
//  Created by Ying Wang on 2022/6/4.
//

import UIKit
import Flutter

class HomeViewController: FlutterViewController {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(engine: FlutterEngine) {
        super.init(engine: engine, nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = .red
        self.view.addSubview(view)
    }


}

