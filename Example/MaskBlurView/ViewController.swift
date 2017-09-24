//
//  ViewController.swift
//  MaskBlurView
//
//  Created by buzzni-sonny on 09/24/2017.
//  Copyright (c) 2017 buzzni-sonny. All rights reserved.
//

import UIKit
import MaskBlurView

class ViewController: UIViewController {
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    let path = UIBezierPath(rect: self.view.frame)
    path.append(UIBezierPath(rect: CGRect(x: self.view.frame.width/2 - 100,
                                          y: self.view.frame.height/2 - 100,
                                          width: 200,
                                          height: 200)))

    let maskBlurView = MaskBlurView()
    maskBlurView.frame = self.view.frame
    maskBlurView.changeEffect(from: .dark)
    maskBlurView.apply(with: path)
    self.view.addSubview(maskBlurView)
  }
}
