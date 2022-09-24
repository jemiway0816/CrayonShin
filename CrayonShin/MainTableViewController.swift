//
//  MainTableViewController.swift
//  CrayonShin
//
//  Created by CHUN-CHIEH LU on 2022/9/24.
//

import UIKit

class MainTableViewController: UITableViewController {

    var Shins:[Shin] = [
    
        
    Shin(imageName: "IMG_01", detailImageName: "IMG01",shinWord: "心情不好"),
    Shin(imageName: "IMG_02", detailImageName: "IMG02",shinWord: "笑笑不說話"),
    Shin(imageName: "IMG_03", detailImageName: "IMG03",shinWord: "人就是這麼奇怪"),
    Shin(imageName: "IMG_04", detailImageName: "IMG04",shinWord: "有時候"),
    Shin(imageName: "IMG_05", detailImageName: "IMG05",shinWord: "若不被在乎"),
    Shin(imageName: "IMG_06", detailImageName: "IMG06",shinWord: "不是故意"),
    Shin(imageName: "IMG_07", detailImageName: "IMG07",shinWord: "人最好的狀態"),
    Shin(imageName: "IMG_08", detailImageName: "IMG08",shinWord: "到底是什麼"),
    Shin(imageName: "IMG_09", detailImageName: "IMG09",shinWord: "有些事"),
    Shin(imageName: "IMG_10", detailImageName: "IMG10",shinWord: "長大後"),
    Shin(imageName: "IMG_11", detailImageName: "IMG11",shinWord: "生活")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBSegueAction func showDetail(_ coder: NSCoder) -> DetailViewController? {
        
        let controller = DetailViewController(coder: coder)
        
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.shin = Shins[row]
        }
        
        return controller
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Shins.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(ShinTableViewCell.self)", for: indexPath) as! ShinTableViewCell

        let shin = Shins[indexPath.row]
        
        cell.shinImageView.image = UIImage(named: shin.imageName)
        cell.shinLabel.text = shin.shinWord
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
