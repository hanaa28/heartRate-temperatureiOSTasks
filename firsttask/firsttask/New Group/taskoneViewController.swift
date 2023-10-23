//
//  taskoneViewController.swift
//  firsttask
//
//  Created by Sohila on 23/10/2023.
//

import UIKit

class taskoneViewController: UIViewController {

    @IBOutlet weak var firstlbl: UILabel!
    
    @IBOutlet weak var degree: UITextField!
    
    
    @IBOutlet weak var debtn: UIButton!
    
    @IBOutlet weak var outlbl: UILabel!
var getdegree = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        firstlbl.text = "Enter Current Heart rate"
        debtn.setTitle("Done", for: .normal)
        outlbl.text = ""

        // Do any additional setup after loading the view.
    }
    @IBAction func doaction(_ sender: Any) {
        
        getdegree = degree.text ?? ""
//        if (Double (getdegree) ?? 0.0 < 100 && Double (getdegree) ?? 0.0 > 200 ){
//            outlbl.text = "not in zone"
//        }
//        else{
            switch Double (getdegree) ?? 0.0{
            case 100...120 :
                outlbl.text = "You are in the Very Light zone.Activity in this Zone helps with recovery"
            case 121...140 :
                outlbl.text = "You are in the Light zone.Activity in this Zone helps improve basic"
            case 141...160:
                outlbl.text = "You are in the Moderate zone.Activity in this Zone helps improve fitness"
            case 161...180 :
                outlbl.text = "You are in the Hard zone.Activity in this Zone icreases performance capacity for shorter sessions"
            case 181...200 :
                outlbl.text = "You are in the Very Light zone.Activity in this Zone helps with recovery"
            default :
                outlbl.text = "not zone"
            }
            
//        }
        
        
        
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
