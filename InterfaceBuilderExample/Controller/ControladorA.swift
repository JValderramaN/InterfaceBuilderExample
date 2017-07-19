//
//  ControladorA.swift
//  InterfaceBuilderExample
//
//  Created by José Valderrama on 7/19/17.
//  Copyright © 2017 José Valderrama. All rights reserved.
//

import UIKit

class ControladorA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func presentarB(_ sender: UIButton) {
        guard let viewcontrollerB = UIStoryboard.init(name: "StoryboardB", bundle: nil).instantiateInitialViewController()
            else { return }
        
        navigationController?.pushViewController(viewcontrollerB, animated: true)
    }
    
    @IBAction func presentarC(_ sender: UIButton) {
//        guard let viewcontrollerC = UIStoryboard.init(name: "StoryboardC", bundle: nil).instantiateInitialViewController()
//            else { return }
        let viewcontrollerC = UIStoryboard.init(name: "StoryboardC", bundle: nil).instantiateViewController(withIdentifier: "controladorC2")
        
        navigationController?.pushViewController(viewcontrollerC, animated: true)
    }
}

