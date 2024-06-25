//
//  ViewController.swift
//  CalcApp
//
//  Created by Soo Jang on 6/26/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var num = "12345"
    
    lazy var numLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.textColor = .white
        label.text = num
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 60, weight: .bold)
        return label
    }()
    
    lazy var buttons: [UIButton] = {
        let buttonLabels = ["7", "8", "9", "+"]
        var buttons = [UIButton]()
        for i in buttonLabels {
            let btn = UIButton()
            btn.setTitle(i, for: .normal)
            btn.titleLabel?.font = .boldSystemFont(ofSize: 30)
            btn.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            btn.frame.size.height = 80
            btn.frame.size.width = 80
            btn.layer.cornerRadius = 40
            buttons.append(btn)
        }
        return buttons
    }()
    
    lazy var hSTV: UIStackView = {
        let sv = UIStackView(arrangedSubviews: buttons)
        sv.axis = .horizontal
        sv.backgroundColor = .black
        sv.spacing = 10
        sv.distribution = .fillEqually
        return sv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
    }
    
    func setLayout() {
        view.addSubview(numLabel)
        view.addSubview(hSTV)
        
        numLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(30)
            $0.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().inset(200)
            $0.height.equalTo(100)
        }
        
        hSTV.snp.makeConstraints {
            $0.height.equalTo(80)
        }
    }
    
    
}

