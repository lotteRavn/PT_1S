//
//  ContainerViewController.swift
//  SlidingMenuDansk
//
//  Created by Lotte Ravn on 09/02/16.
//  Copyright © 2016 Lotte Ravn. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var navMenu: UIView!
    @IBOutlet weak var masterView: UIView!
    
    @IBOutlet weak var rightConstraint1: NSLayoutConstraint!
    
    @IBOutlet weak var rightConstraint2: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    @IBAction func leftSwipe(sender: UISwipeGestureRecognizer) {
        open()
    }

    
    @IBAction func rightSwipe(sender: UISwipeGestureRecognizer) {
        close()
            }

    @IBAction func menuTapped(sender: AnyObject) {
        if rightConstraint1.constant == 0 {
        open()
        }else{
        close()
        }
    }
    func open() {
        rightConstraint1.constant = menuView.frame.size.width
        rightConstraint2.constant = menuView.frame.size.width
        UIView.animateWithDuration(0.3){
            self.view.layoutIfNeeded()
        }
    }
    func close() {
        rightConstraint1.constant = 0
        rightConstraint2.constant = 0
        UIView.animateWithDuration(0.3){
            self.view.layoutIfNeeded()
        }
  
    }
}
