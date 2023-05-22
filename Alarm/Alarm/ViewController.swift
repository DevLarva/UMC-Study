//
//  ViewController.swift
//  Alarm
//
//  Created by 백대홍 on 2023/05/19.
//
import UIKit

class AlarmViewController: UIViewController {
    var alarmTime: Date?
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the alarm time (e.g., 8:00 AM)
        let calendar = Calendar.current
        let alarmDate = calendar.date(bySettingHour: 8, minute: 0, second: 0, of: Date())
        alarmTime = alarmDate
        
        // Start the timer to check the alarm time every second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkAlarm), userInfo: nil, repeats: true)
    }
    
    @objc func checkAlarm() {
        guard let alarmTime = alarmTime else { return }
        
        let currentTime = Date()
        let calendar = Calendar.current
        
        // Compare the current time with the alarm time
        if calendar.compare(currentTime, to: alarmTime, toGranularity: .second) == .orderedSame {
            // Stop the timer when the alarm time is reached
            timer?.invalidate()
            
            // Perform the desired action (e.g., show an alert)
            showAlert()
        }
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Alarm", message: "Wake up!", preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        alertController.addAction(dismissAction)
        present(alertController, animated: true, completion: nil)
    }
}

// Create an instance of the view controller and set it as the root view controller

