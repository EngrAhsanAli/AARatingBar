//
//  AARatingBar.swift
//  AARatingBar
//
//  Created by Engr. Ahsan Ali on 13/01/2017.
//  Copyright (c) 2017 AA-Creations. All rights reserved.
//

import UIKit


@IBDesignable open class AARatingBar: UIView {
    
    /// AARatingBar filled icon
    @IBInspectable open var filledIcon: String = "★" {
        didSet {
            setNeedsLayout()
        }
    }
    
    /// AARatingBar un filled icon
    @IBInspectable open var unFilledIcon: String = "☆" {
        didSet {
            setNeedsLayout()
        }
    }

    /// AARatingBar rating View
    var filledView: UIView!
    
    /// AARatingBar rating bar width
    var ratingWidth: CGFloat {
        return bounds.size.width / _maxValue
    }
    
    /// AARatingBar change listner
    open var ratingDidChange: ((CGFloat) -> Void)?
    
    /// AARatingBar rating value
    @IBInspectable open var value: CGFloat = 0 {
        didSet{
            
            if value < 0 {
                value = 0
            }
            else if _maxValue < value {
                value = _maxValue
            }
            
            value = isAbsValue ? round(value+0.3) : value
            
            ratingDidChange?(value)
            setNeedsLayout()
        }
    }
    
    /// Getter and setter for maximum rating value
    var _maxValue: CGFloat {
        return CGFloat(maxValue)
    }
    
    @IBInspectable open var maxValue: Int = 5 {
        didSet {
            if maxValue < 3 {
                maxValue = 3
            }
            setNeedsLayout()
        }
    }
    
    /// AARatingBar User Interaction Enabled
    @IBInspectable open var isEnabled: Bool = true {
        didSet {
            setupTapGesture()
            setNeedsLayout()
        }
    }
    
    
    /// AARatingBar color
    @IBInspectable open var color: UIColor = .blue {
        didSet{
            setNeedsLayout()
        }
    }
    
    /// AARatingBar Animaiton Bool
    @IBInspectable open var canAnimate: Bool = true {
        didSet{
            setNeedsLayout()
        }
    }
    
    /// AARatingBar rating value absolute Bool
    @IBInspectable open var isAbsValue: Bool = true {
        didSet{
            setNeedsLayout()
        }
    }
    
    // MARK:- AARatingBar Animation Interval
    
    var _animationInterval: TimeInterval {
        return canAnimate ? animationInterval : 0
    }
    @IBInspectable open var animationInterval: TimeInterval = 0.3 {
        didSet{
            setNeedsLayout()
        }
    }
    
    /// AARatingBar rating tap gesture
    var ratingTapGesture: UITapGestureRecognizer  {
        get {
            let tapGesture = UITapGestureRecognizer(target: self,
                                                    action: #selector(didTapped(_:)))
            tapGesture.numberOfTapsRequired = 1
            return tapGesture
        }
    }
    
    /// AARatingBar check value isEmpty
    open var isEmpty: Bool {
        return value <= 0 ? true : false
    }
    
    /// Drawing AARatingBar
    ///
    /// - Parameter rect: view frame
    
    open override func draw(_ rect: CGRect) {
        super.draw(rect)
        drawRatingBar()
        ratingValueChange()
        setupTapGesture()
    }
    
    
    /// Draw Initial rating bar
    func drawRatingBar() {
        
        let unFilledView = getRatingView(withIcon: unFilledIcon)
        filledView = getRatingView(withIcon: filledIcon)
        
        addSubview(filledView)
        addSubview(unFilledView)
        
    }
    
    /// Add or remove tap gesture as required
    func setupTapGesture() {
        guard isEnabled else {
            removeGestureRecognizer(ratingTapGesture)
            return
        }
        addGestureRecognizer(ratingTapGesture)
    }
    
    /// Creating View for each filled and unfilled ratings
    ///
    /// - Parameter text: text icon for rating
    /// - Returns: view that contained specific type of rating icons
    func getRatingView(withIcon text: String) -> UIView {
        let view = UIView(frame: self.bounds)
        view.clipsToBounds = true
        view.backgroundColor = .clear
    
        var frame = self.bounds
        frame.size.width = ratingWidth
        
        let fitSize = CGSize(width: ratingWidth, height: bounds.height)
        
        for position in 0 ..< maxValue {
            
            frame.origin.x = CGFloat(position) * ratingWidth
            
            let starView = UILabel(frame: frame)
            starView.text = text
            starView.textColor = color
            starView.font = starView.font.withSize(ratingWidth)
            starView.sizeThatFits(fitSize)
            view.addSubview(starView)
        }
        return view
    }
    
    /// AARatingBar Did Tapped
    ///
    /// - Parameter sender: tap gesture
    func didTapped(_ sender: UITapGestureRecognizer){
        
        guard isEnabled else {
            return
        }
        self.value = sender.location(in: self).x / ratingWidth
        
        UIView.animate(withDuration: _animationInterval) {
            self.ratingValueChange()
        }
    }
    
    /// Change rating frame
    func ratingValueChange() {
        let rating = bounds.size.width * value / _maxValue
        self.filledView.frame.size.width = rating
    }
}
