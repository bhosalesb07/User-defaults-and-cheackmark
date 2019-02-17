//
//  ViewController.swift
//  machintest2book
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBAction func btncontinnue(_ sender: Any) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! nextViewController
        navigationController?.pushViewController(next, animated: true)
        let Booknamepass = UserDefaults.standard
        Booknamepass.set(SelectedbookArray, forKey: "message")
        selectedbookprice = String(answer)
        Booknamepass.set(selectedbookprice, forKey: "message2")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelview.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblname.text = Books[indexPath.row]
        cell.lblprice.text = String(Price[indexPath.row])
        return cell
    }
    
    
    @IBOutlet weak var tabelview: UITableView!
    
    
    let Books = ["Marathi","English","Hindi","Science","Sanskrit"]
    let Price = [100,200,300,400,500]
    
    var SelectedbookArray = [String]()
    var selectedbook = String()
    var selectedbookprice = String()
    var answer : Int = 0
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        let cell = tabelview.cellForRow(at: indexPath) as! TableViewCell
        
        selectedbook = cell.lblname.text!
        selectedbookprice = cell.lblprice.text!
        if cell.accessoryType == UITableViewCellAccessoryType.none
        {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
            SelectedbookArray.append(selectedbook)
            answer = answer + Int(selectedbookprice)!
           
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.none
            let removebook = SelectedbookArray.index(of: selectedbook)
            SelectedbookArray.remove(at: removebook!)
            let removeprice = Int(cell.lblprice.text!)
            answer = answer - removeprice!
        }
            print("Selected Books = \(SelectedbookArray)")
            print("Total Price = \(answer)")
    }

    override func viewDidLoad() {
        tabelview.delegate = self
        tabelview.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

