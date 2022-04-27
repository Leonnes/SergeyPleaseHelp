//
//  ViewController.swift
//  Navigation
//
//  Created by Сергей Прокопьев on 20.04.2022.
//

import UIKit

struct Post {
    let title: String
}

let post = Post(title: "Qqq")


class FeedViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        makeButton()
    }
    
    private func makeButton() {
          let button = UIButton(frame:CGRect(x:0, y:0, width: 200, height: 40))
          button.center = view.center
          button.setTitle("Пост", for: .normal)
          button.backgroundColor = .black
          button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
          view.addSubview(button)
      }
      @objc private func tapAction() {
          let postVC = PostViewController()
          present(postVC, animated: true)
  
      }
  
}