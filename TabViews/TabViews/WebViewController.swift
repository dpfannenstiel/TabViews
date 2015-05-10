//
//  WebViewController.swift
//  TabViews
//
//  Created by Dustin Pfannenstiel on 5/9/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

	@IBOutlet var webView: UIWebView!
	var showLinkAlert:Bool = true
	
    override func viewDidLoad() {
        super.viewDidLoad()

		if let url = NSURL(string: "https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UITabBar_Class/index.html") {
			
			webView.loadRequest(NSURLRequest(URL: url))
			
		} else {
			// TODO: Load an error message.
		}

		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	func presentLinkAlert() {
		
		if showLinkAlert == false {
			return
		}
		
		let alertController = UIAlertController(title: NSLocalizedString("Links Disabled", comment: "Links Disabled"), message: NSLocalizedString("Sorry, links have been disabled in this app.", comment: "Sorry, links have been disabled in this app."), preferredStyle: UIAlertControllerStyle.ActionSheet)
	
		let okayAction = UIAlertAction(title: NSLocalizedString("Okay", comment: "Okay"), style: .Cancel) { (action) -> Void in
			self.dismissViewControllerAnimated(true, completion: { () -> Void in

			})
		}
		
		let dontShow = UIAlertAction(title: NSLocalizedString("Don't Show Again", comment: "Don't Show Again"), style: .Destructive) { (action) -> Void in
			self.showLinkAlert = false
			self.dismissViewControllerAnimated(true, completion: { () -> Void in
				
			})
		}
		
		alertController.addAction(okayAction)
		alertController.addAction(dontShow)
		
		self.presentViewController(alertController, animated: true) { () -> Void in
			
		}
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

	// MARK: UIWebViewDelegate
	
	func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {

		var load = navigationType == .Other ? true : false
		
		if load == false {
			self.presentLinkAlert()
		}
		
		return load
	}
	
	func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
		UIApplication.sharedApplication().networkActivityIndicatorVisible = false
	}
	
	func webViewDidStartLoad(webView: UIWebView) {
		UIApplication.sharedApplication().networkActivityIndicatorVisible = true
	}
	
	func webViewDidFinishLoad(webView: UIWebView) {
		UIApplication.sharedApplication().networkActivityIndicatorVisible = false
	}
}
