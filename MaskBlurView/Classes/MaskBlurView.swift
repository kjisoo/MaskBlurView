//
//  MaskBlurView.swift
//  MaskBlurView
//
//  Created by sonny on 2017. 9. 24..
//  Copyright © 2017년 sonny. All rights reserved.
//

import UIKit

open class MaskBlurView: UIVisualEffectView {
  /**
   Change BlurEffectStyle.
   */
  open func changeEffect(from blurStyle: UIBlurEffectStyle) {
    self.effect = UIBlurEffect(style: blurStyle)
  }

  /**
   Use Path to change the area of the blur.
   The old path will disappear and the new path will be applied.
   */
  open func apply(with bezierPath: UIBezierPath) {
    let shapeLayer = self.transfomeCAShapeLayer(from: bezierPath)
    if #available(iOS 11, *) {
      self.layer.mask = shapeLayer
    } else if #available(iOS 10, *) {
      self.mask = createMaskView(with: shapeLayer)
    } else {
      self.layer.mask = shapeLayer
    }
  }

  private func transfomeCAShapeLayer(from bezierPath: UIBezierPath) -> CAShapeLayer {
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = bezierPath.cgPath;
    shapeLayer.fillRule = kCAFillRuleEvenOdd
    return shapeLayer
  }

  private func createMaskView(with shapeLayer: CAShapeLayer) -> UIView {
    let maskView = UIView(frame: self.frame)
    maskView.backgroundColor = .white
    maskView.layer.mask = shapeLayer
    return maskView
  }
}
