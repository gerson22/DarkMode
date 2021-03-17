//
//  ViewController.swift
//  EjemploDarkmode
//
//  Created by Gerson Isaias on 02/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSiguiente: UIButton!
    // 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupColor()
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        setupColor()
    }
    
    func setupColor(){
        if #available(iOS 12.0, *) {
            
            let isDarkMode = traitCollection.userInterfaceStyle == .dark
            
            btnSiguiente.setTitleColor(isDarkMode ? UIColor.lightText : UIColor.red, for: .normal)
        } else {
            // Fallback on earlier versions
        } //lightMode
        
        
        if #available(iOS 11.0, *) {
            view.backgroundColor = UIColor(named: "BackgroundMio")
        } else {
            // Fallback on earlier versions
        }
    }
    
    // 2
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    // 3
    override func viewDidAppear(_ animated: Bool) {
        
    }

    // 4
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    // 5
    override func viewDidDisappear(_ animated: Bool) {
        
    }

}

