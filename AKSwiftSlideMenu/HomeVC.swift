//
//  HomeVC.swift
//  AKSwiftSlideMenu
//
//  Created by MAC-186 on 4/8/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit

class HomeVC: BaseViewController {

    @IBOutlet var constrainMenuLeft: UIScreenEdgePanGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        
        /*
         Left to right screen with finger is used to open the menu during the drawing phase.
         */
        constrainMenuLeft = UIScreenEdgePanGestureRecognizer(target: self,
                                                                action: #selector(leftMenuOpen))
        constrainMenuLeft.edges = .left
        view.addGestureRecognizer(constrainMenuLeft)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("again add menubutton")
        //addSlideMenuButton()
    }
    
    @objc func leftMenuOpen(sender: UIScreenEdgePanGestureRecognizer) {
        if sender.state == .ended {
            openedLeftMenu()
        }
        
        //let translation = sender.translation(in: sender.view!)
        //print("Trans:\(translation)")
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
