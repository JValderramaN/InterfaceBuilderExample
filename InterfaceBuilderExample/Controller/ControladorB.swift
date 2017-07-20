//
//  ControladorB.swift
//  InterfaceBuilderExample
//
//  Created by José Valderrama on 7/19/17.
//  Copyright © 2017 José Valderrama. All rights reserved.
//

import UIKit
import Alamofire

class ControladorB: UIViewController {

    @IBOutlet weak var jsonTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func requestButtonTapped(_ sender: UIButton) {
        // SOLICITUD DEL JSON: https://www.reddit.com/top/.json
        let url = "https://www.reddit.com/top/.json"
        
        Alamofire.request(url).responseString { (data) in
            print("callback del request")
            print(data)
            self.jsonTextView.text = data.value
        }

        print("luego del request")
    }
}
