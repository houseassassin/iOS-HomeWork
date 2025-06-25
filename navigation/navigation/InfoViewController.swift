//
//  InfoViewController.swift
//  Navigation
//
//  Created by Houseassassin on 18.05.2025.
//

import UIKit
struct Info {
    let title: String
}
class InfoViewController: UIViewController {
    
    var info: Info
    init(info: Info) {
        self.info = info
        super.init(
            nibName: nil,
            bundle: nil
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        
        let alertButton = UIButton(type: .system)
        
        alertButton.backgroundColor = .purple
        alertButton.layer.cornerRadius = 10
        alertButton.setTitle("Alert", for: .normal)
        alertButton.setTitleColor(.red, for: .normal)
        alertButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        alertButton.addTarget(self, action: #selector(alert), for: .touchUpInside)
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .magenta
        view.addSubview(alertButton)
        
        NSLayoutConstraint.activate(
            [
                alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ]
        )
        
        
        
        
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = info.title
        // Do any additional setup after loading the view.
        
    }
    @objc func alert() {
        
        let alert = UIAlertController(
            title: "My Alert!",
            message: "This is Alert!",
            preferredStyle: .alert
        )
        alert.addAction(
            UIAlertAction(
                title: NSLocalizedString("OK", comment: "Default Action"),
                style: .default,
                handler: {
                    _ in NSLog("The \"OK\" alert occured.")
                }
            )
        )
        alert.addAction(
            UIAlertAction(
                title: NSLocalizedString("Dismiss", comment: "Default Action"),
                style: .cancel,
                handler: {
                    _ in NSLog("The \"Cancel\" alert aborted.")
                }
            )
        )
        self.present(alert, animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
