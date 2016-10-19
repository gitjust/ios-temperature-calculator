//
//  ViewController.swift
//  Temp Calc
//
//  Created by Justinus Andjarwirawan on 8/31/15.
//  Copyright (c) 2015 Petra Christian University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sliderCel: UISlider!
    @IBOutlet weak var labelCel: UILabel!
    @IBOutlet weak var sliderFah: UISlider!
    @IBOutlet weak var labelFah: UILabel!
    @IBOutlet weak var hasilFah: UILabel!
    @IBOutlet weak var hasilCel: UILabel!
    @IBAction func celChange(_ sender: AnyObject) {
        let slid = lroundf(sliderCel.value) // atau Int(sliderCel.value)
        labelCel.text = String.localizedStringWithFormat("%d°C", slid)
        let hasil = Double(slid)*9/5 + 32
        hasilFah.text = String.localizedStringWithFormat("%.1f°F", hasil)
        gantiWarnaBackground(slid)
    }
    
    @IBAction func fahChange(_ sender: AnyObject) {
        let slid = Int(sliderFah.value)
        // formatting decimal point with localizedStringWithFormat
        labelFah.text = String.localizedStringWithFormat("%d°F",slid)
        let hasil = Double(slid-32)*5/9
        hasilCel.text = String.localizedStringWithFormat("%.2f°C", hasil)
        gantiWarnaBackground(slid)
    }

    func gantiWarnaBackground(_ slid: Int) -> () {
        let myRed = CGFloat(Double(slid)/100)
        let myBlue = CGFloat(1-Double(slid)/100)
        self.view.backgroundColor = UIColor(red: myRed, green: 0, blue: myBlue, alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

