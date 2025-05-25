//
//  FeedViewController.swift
//  Navigation
//
//  Created by Houseassassin on 18.05.2025.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let postButton = UIButton(type: .system)
        
        postButton.backgroundColor = .blue
        postButton.layer.cornerRadius = 10
        postButton.setTitle("Новый пост", for: .normal)
        postButton.setTitleColor(.lightGray, for: .normal)
        postButton.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        postButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .magenta
        view.addSubview(postButton)
        
        NSLayoutConstraint.activate(
            [
                postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ]
        )
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func showPost() {
        
        let post = Post(title: "Новый Пост")
        let postViewControllers = PostViewController(post: post)
        
        navigationController?.pushViewController(postViewControllers, animated: true)
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
