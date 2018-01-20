//
//  PopVC.swift
//  pixel-city
//
//  Created by Apostolis on 20/01/2018.
//  Copyright © 2018 Apostolis. All rights reserved.
//

import UIKit

class PopVC: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet weak var uiImageView: UIImageView!
    
    var passedImage: UIImage!
    
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiImageView.image = passedImage
        addDoubleTap()
    }

   
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }

    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
    
}
