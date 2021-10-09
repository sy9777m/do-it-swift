//
//  ViewController.swift
//  AlramClock
//
//  Created by Siyun Min on 2020/07/02.
//  Copyright © 2020 Siyun Min. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var currentTime: UILabel!
    @IBOutlet var selectedTime: UILabel!
    
    var alertTime: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func selectTimePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        selectedTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "HH:mm"
        alertTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "HH:mm"
        let curTime = formatter.string(from: date as Date)
        
        
        if(curTime == alertTime) {
            view.backgroundColor = UIColor.red
        }
    }
    
    
}

