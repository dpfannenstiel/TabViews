//
//  SettingsTableViewController.swift
//  TabViews
//
//  Created by Dustin Pfannenstiel on 5/9/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

	@IBOutlet var barStyleSegmentedControl: UISegmentedControl!
	@IBOutlet var barTintColor: UIView!
	var tabBar:UITabBar!
	
    override func viewDidLoad() {
        super.viewDidLoad()

		self.tabBar = self.tabBarController!.tabBar
		
		barTintColor.backgroundColor = tabBar.barTintColor

	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	@IBAction func barStyleDidChange(sender: AnyObject) {
		
		if barStyleSegmentedControl.selectedSegmentIndex == 0 {
			tabBar.barStyle = .Default
		} else {
			tabBar.barStyle = .Black
		}
		
	}

}
