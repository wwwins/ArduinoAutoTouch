//
//  ViewController.swift
//  AutoTouch
//
//  Created by wwwins on 2016/4/22.
//  Copyright © 2016年 wwwins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!

  private var cnt = 0
  private var timestamp:NSTimeInterval?

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    label.text = "0"
    timestamp = NSDate().timeIntervalSince1970

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let touch = touches.first {
      let currentPoint = touch.locationInView(self.view)
      // do something with your currentPoint

      print("touching")
      self.view.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
      label.text = String((NSDate().timeIntervalSince1970 - timestamp!)*1000)
      timestamp = NSDate().timeIntervalSince1970

    }
  }

  override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let touch = touches.first {
      let currentPoint = touch.locationInView(self.view)
      // do something with your currentPoint
    }
  }

  override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let touch = touches.first {
      let currentPoint = touch.locationInView(self.view)
      // do something with your currentPoint
    }
  }

}

