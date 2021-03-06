//
//  DialogViewController.swift
//  Howare
//
//  Created by 刘向宏 on 16/3/31.
//  Copyright © 2016年 刘向宏. All rights reserved.
//

import UIKit

class DialogViewController: UIViewController {

    @IBOutlet weak var dialogView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.dialogView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.4, 0.4)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(0.2) {
            self.dialogView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 1)
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated);
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event);
        disMiss();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disMiss() {
        UIView.animateWithDuration(0.2, animations: {
            self.dialogView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1)
            self.dialogView.alpha = 0
            }) { (Bool) in
                self.dismissViewControllerAnimated(false, completion: nil)
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

}
