//
//  MenuViewController.swift
//  Ideas2Tech
//
//  Created by Ahmed IOS Dev on 10/7/17.
//  Copyright © 2017 Ahmed IOS Dev. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    let titles = ["Home", "Our projects", "Services", "About us", "Contact us", "SignOut"]
    
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        menuTableView.delegate = self
        menuTableView.dataSource = self;
        
        
        
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.titles.count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.menuTableView.dequeueReusableCell(withIdentifier: "myCell")! as UITableViewCell
        
        
        return cell;
        
    }
    
    
    
    
    

}
