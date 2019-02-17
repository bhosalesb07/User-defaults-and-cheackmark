//
//  nextViewController.swift
//  machintest2book
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class nextViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    var array = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }

    
    @IBOutlet weak var secondtablview: UITableView!
    
    
    
    @IBOutlet weak var labelprice: UILabel!
    override func viewDidLoad() {
      
        super.viewDidLoad()
        array = UserDefaults.standard.value(forKey: "message") as! Array
        let  pricelblvalue =  UserDefaults.standard.value(forKey: "message2") as! String?
        labelprice.text = pricelblvalue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
