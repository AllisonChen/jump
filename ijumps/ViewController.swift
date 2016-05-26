//
//  ViewController.swift
//  ijumps
//
//  Created by Allison CHEN on 2016/5/11.
//  Copyright © 2016年 Allison. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate ,UINavigationControllerDelegate {

	@IBOutlet weak var Camera: UIButton!
	
	@IBOutlet weak var PhotoLibrary: UIButton!

	
	@IBOutlet weak var ImageDisplay: UIImageView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func CameraAction(sender: UIButton) {
		
		let picker = UIImagePickerController()
		picker.delegate=self
		picker.sourceType = .Camera
		
		presentViewController(picker, animated: true, completion: nil)

		
	}

	@IBAction func PhotoLibraryAction(sender: UIButton) {
		let picker = UIImagePickerController()
		picker.delegate=self
		picker.sourceType = .PhotoLibrary
		
		
		presentViewController(picker, animated: true, completion: nil)
	
	
	
	}
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
		ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage;
		dismissViewControllerAnimated(true, completion: nil)
	}
	
}

