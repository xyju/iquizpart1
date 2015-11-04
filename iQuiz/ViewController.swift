//
//  ViewController.swift
//  iQuiz
//
//  Created by Xiangyu Ju on 15/11/3.
//  Copyright © 2015年 Xiangyu Ju. All rights reserved.
//

import UIKit

class Subject {
    
    var title: String
    var description: String
    var image: UIImage
    
    init(title: String, description: String, imageName: String) {
        self.title = title
        self.description = description
        self.image = UIImage(named: imageName)!
    }
}

var mathematics = Subject(title: "Mathematics", description: "This is a mathematics quiz.", imageName: "math")

var marvel = Subject(title: "Marvel Super Heroes", description: "This is a quiz of marvel super heroes", imageName: "poster1")

var science = Subject(title: "Science", description: "This is a science quiz.", imageName: "science")


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBAction func clickSettings(sender: UIBarButtonItem) {
        
        let setAlert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        setAlert.addAction(defaultAction)
        
        self.presentViewController(setAlert, animated: true, completion: nil)
    }
    
    var subjects: [Subject] = [mathematics, marvel, science]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int{
        return subjects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let sub = subjects[indexPath.row]
        cell.textLabel?.text = sub.title
        cell.detailTextLabel?.text = sub.description
        cell.imageView?.image = sub.image
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

