//
//  PoemViewController.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/10/3.
//

import UIKit

class PoemViewController: UIViewController {

    @IBOutlet weak var poem: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let asset = NSDataAsset(name: "poem"),
        let content = String(data: asset.data, encoding: .utf8){
            poem.text = content
        }
        // Do any additional setup after loading the view.
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
