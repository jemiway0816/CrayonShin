//
//  DetailViewController.swift
//  CrayonShin
//
//  Created by CHUN-CHIEH LU on 2022/9/24.
//

import UIKit

class DetailViewController: UIViewController {

    var shin:Shin!
    
    @IBOutlet weak var deimageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        deimageView.image = UIImage(named: shin.detailImageName)
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
