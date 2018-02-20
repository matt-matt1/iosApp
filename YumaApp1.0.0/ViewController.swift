//
//  ViewController.swift
//  YumaApp1.0.0
//
//  Created by Yuma Usa on 2018-02-20.
//  Copyright © 2018 Yuma Usa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController
{
	@IBOutlet weak var navBar: UINavigationBar!
	@IBOutlet weak var navTitle: UINavigationItem!
	@IBOutlet weak var navClose: UIBarButtonItem!
	@IBOutlet weak var webView: UIWebView!
	
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		navTitle.title = "Yuma Technical Inc."
		webView.loadRequest(URLRequest(url: URL(string: "http://yumatechnical.com")!))
//		navBar?.items![0].leftBarButtonItems![0].isEnabled = false
	}

	override func didReceiveMemoryWarning()
	{
		super.didReceiveMemoryWarning()
	}

	@IBAction func navCloseAct(_ sender: Any)
	{
		//self.dismiss(animated: false, completion: nil)
		webView.goBack()
	}
	
}

