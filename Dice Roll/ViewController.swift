//
//  ViewController.swift
//  Dice Roll
//
//  Created by Matias Pineda on 5/27/19.
//  Copyright © 2019 Matias Pineda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var etiqueta: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func botonApretado(_ sender: UIButton) {
        
        let primeraImagen = arc4random_uniform(5)+1
        let segundaImagen = arc4random_uniform(5)+1
        
        etiqueta.text = "La suma es: \(primeraImagen + segundaImagen)"
        
        leftImageView.image = UIImage(named: "Dice\(primeraImagen)")
        rightImageView.image = UIImage(named: "Dice\(segundaImagen)")
        
    }
    
}

