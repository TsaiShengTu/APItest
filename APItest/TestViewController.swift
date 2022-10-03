//
//  TestViewController.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/9/19.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var picImageView: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getImage(image: .original)
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
    
    
    //要引用enum 要記得給switch參數名稱
    func getImage(image:ImageEnum){
        let urlStr: String = "https://i.imgur.com/nToSGkI.png"
        let randomApi1URL:String = "https://some-random-api.ml/canvas/"
        let url:URL
        switch image {
        case .original:
            url = URL(string:urlStr)!
        case .gay:
            url = URL(string: "\(randomApi1URL)gay?avatar=\(urlStr)")!
        case .jail:
            url = URL(string: "\(randomApi1URL)jail?avatar=\(urlStr)")!
        }
        URLSession.shared.dataTask(with: url) { data, response,error in
            if let data,
               let image = UIImage(data: data){
                DispatchQueue.main.async {
                    self.picImageView.image = image
                }
            }
        }.resume()
        
           
    }
    
    
    @IBAction func change(_ sender: UISegmentedControl) {
        getImage(image: ImageEnum(rawValue: sender.selectedSegmentIndex)!)
    }
        
        
        
    
}
