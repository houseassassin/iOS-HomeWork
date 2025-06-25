//
//  PostViewController.swift
//  Navigation
//
//  Created by Houseassassin on 18.05.2025.
//

import UIKit
struct Post {
    let title: String
}
class PostViewController: UIViewController {
    
    var post: Post
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let infoBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "info.square"),
            style: .done,
            target: self,
            action: #selector(showInfo)
        )
        self.navigationItem.rightBarButtonItem  = infoBarButtonItem
        
        view.backgroundColor = .red
        title = post.title
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func showInfo() {
        
        let info = Info(title: "Инфо")
        
        let infoViewControllers = InfoViewController(info: info)
        
      
        infoViewControllers.modalTransitionStyle = .flipHorizontal
        infoViewControllers.modalPresentationStyle = .pageSheet
        present(infoViewControllers, animated: true)
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
