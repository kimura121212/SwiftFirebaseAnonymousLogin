//
//  DetailViewController.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by 木村友紀 on 2020/05/02.
//  Copyright © 2020 木村友紀. All rights reserved.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController {
    
    var userName = String()
    var contentImage = String()
    var date = String()
    var profileImage = String()
    var comment = String()

    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var contentsImageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        shareButton.layer.cornerRadius = 20.0
        
        profileImageView.sd_setImage(with: URL(string: profileImage), completed: nil)
        
        userNameLabel.text = userName
        
        dateLabel.text = date
        
        contentsImageView.sd_setImage(with: URL(string: contentImage), completed: nil)
        
        commentLabel.text = comment
        
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let items = [contentsImageView.image] as Any
        
        let acView = UIActivityViewController(activityItems: [items], applicationActivities: nil)
        present(acView, animated: true, completion: nil)
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
