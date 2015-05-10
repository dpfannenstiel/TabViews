//
//  ColorPickerViewController.swift
//  TabViews
//
//  Created by Dustin Pfannenstiel on 5/9/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UITextFieldDelegate {

	@IBOutlet var previewColor: UIView!
	
	@IBOutlet var redSlider: UISlider!
	@IBOutlet var greenSlider: UISlider!
	@IBOutlet var blueSlider: UISlider!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func changeRed(sender: AnyObject) {
	}

	@IBAction func changeGreen(sender: AnyObject) {
	}
	
	
	@IBAction func changeBlue(sender: AnyObject) {
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
