//
//  Menu01ViewController.swift
//  StoryboardTest
//
//  Created by Takayoshi Fujiki on 7/9/16.
//  Copyright © 2016 Takayoshi Fujiki. All rights reserved.
//

import UIKit

class Menu01ViewController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let myStoryboard = UIStoryboard.init(name: "Menu01", bundle: nil)

        // XXX: Pretending Storyboard Reference.
        // Since Menu01 tab already has Navigation Controller,
        // Remove the NavigationController defined in Menu01
        // storyboard enclosing Menu01 view controllers.
        let fakeNavController = myStoryboard.instantiateInitialViewController() as! UINavigationController

        // XXX: Extract embedded view controller.
        let embeddedController = fakeNavController.viewControllers[0]

        // XXX: Replac original view controllers(defined in Main.storyboard)
        // by extracted one.
        self.viewControllers.removeAll()
        self.pushViewController(embeddedController, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
