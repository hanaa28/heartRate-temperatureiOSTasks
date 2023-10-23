//
//  celsiusViewController.swift
//  firsttask
//
//  Created by Sohila on 23/10/2023.
//

import UIKit

class celsiusViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    
    @IBOutlet weak var celsiusDeg: UITextField!
    
    @IBOutlet weak var celsiusbtn: UIButton!
    
    @IBOutlet weak var fahrenheitbtn: UIButton!
    
    @IBOutlet weak var resultLbL: UILabel!
    var degree = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTitle.text="Enter Temperature in Celsius"
        celsiusbtn.setTitle("Kelvin", for: .normal)
        fahrenheitbtn.setTitle("Fahrenheit", for: .normal)
        resultLbL.text=""
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getKelvin(_ sender: Any) {
        degree = celsiusDeg.text ?? ""
        if Double (degree) ?? 0.0 > 100 {
            resultLbL.text = "not right temoerature"
        }
        else {
            var result = (Double (degree) ?? 0.0) + 273.1518
           
            resultLbL.text = String(result) + " K"
        }
    }
    
    @IBAction func getFahrenheit(_ sender: Any) {
        degree = celsiusDeg.text ?? ""
        if Double (degree) ?? 0.0 > 100 {
            resultLbL.text = "not right temoerature"
        }
        else {
            var result = ( Double (degree) ?? 0.0 ) * (9/5) + 32
            resultLbL.text = String(result) + " F"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
