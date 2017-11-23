//
//  ViewController.swift
//  DataPickerViewDemo
//
//  Created by haogaoming on 2017/11/23.
//  Copyright © 2017年 郝高明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn1 = UIButton()
        btn1.setTitle("时间选择器", for: .normal)
        btn1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn1.backgroundColor = UIColor.orange
        btn1.addTarget(self, action: #selector(btn1DidClick), for: .touchUpInside)
        self.view.addSubview(btn1)
    }

    @objc func btn1DidClick(){
        let showPickerView : PickerView = PickerView(frame: self.view.frame, minDate: nil, maxDate: nil, selectDate: nil, showOnlyValidDates: true)
        showPickerView.showInWindow { [unowned self] (date) in
            print(date)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

