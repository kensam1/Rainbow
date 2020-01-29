//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Lambda_School_Loaner_241 on 1/28/20.
//  Copyright © 2020 Lambda_School_Loaner_241. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    // G BIV
    var colors: [MyColor] = [MyColor(name: "Red", color: .red), MyColor(name: "Orange", color: .orange), MyColor(name: "Yellow", color: .yellow), MyColor(name: "Green", color: .green), MyColor(name: "Blue", color: .blue), MyColor(name: "Indigo", color: .cyan), MyColor(name: "Violet", color: .purple)]

    

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colors.count
    }

    
    
    // A index path is like a coordinate system for section and row. (x=section, y=row)
    // first row of a tableview (0,0)
    // second row (0,1)
    // (0,2)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]  // accessing each item in the array for each row through bracket syntax
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color

       
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       //1. Make sure we are using the correct segue (show segue)
        
        if segue.identifier == "ToDetailViewController" {
            // 2. Get the instance of your detail view from the segue destination
            // 3. Get the index path for the row the user tapped on
            if let detailVC = segue.destination as? ColorDetailViewController, let indexPath = tableView.indexPathForSelectedRow {
                // 4. Initialize color with indexpath
                
                let color = colors[indexPath.row]
                
                // 5. Pass the color to the detail view
                detailVC.cellColor = color
            }
        }
    }
    

}
