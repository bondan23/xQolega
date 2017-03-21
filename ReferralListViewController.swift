//
//  ReferralListViewController.swift
//  Qolega
//
//  Created by Bondan Eko Prasetyo on 3/13/17.
//  Copyright © 2017 B-Soft. All rights reserved.
//

import UIKit

class ReferralListViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var contentHeight : CGFloat = 0.0
    
    private let SCREEN_SIZE = UIScreen.main.bounds
    var panels : [UIView] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //scrollView.backgroundColor = UIColor.init(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        let newY : CGFloat = 10.0
        
        var frm : CGRect = CGRect()
        frm.origin.x = 0
        frm.origin.y = newY
        frm.size = CGSize(width: SCREEN_SIZE.width, height: 100)
        
        scrollView.backgroundColor = UIColor.init(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        
        var contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(contentView)
        scrollView.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: scrollView, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: 0.0))
        scrollView.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.bottom, relatedBy:
            NSLayoutRelation.equal, toItem: scrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0.0))
        scrollView.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: scrollView, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 0.0))
        scrollView.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: scrollView, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: 0.0))
        
        view.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: 0.0))
        
        /*var preguntaLabel = UIView()
        preguntaLabel.backgroundColor = UIColor.black
        preguntaLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(preguntaLabel)
        
        contentView.addConstraint(NSLayoutConstraint(item: preguntaLabel, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 5.0))
        contentView.addConstraint(NSLayoutConstraint(item: preguntaLabel, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: -5.0))
        contentView.addConstraint(NSLayoutConstraint(item: preguntaLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation
            .equal, toItem: contentView, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: 15.0))
        contentView.addConstraint(NSLayoutConstraint(item: preguntaLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 100))*/
        
        for i in 0...20{
            var pnl: UIView = UIView()
            pnl.backgroundColor = UIColor.white
            
            var jobTitle: UILabel = UILabel()
            jobTitle.text = "Senior UX Architect (Content Planning, Interaction Design)"
            jobTitle.numberOfLines = 0
            jobTitle.translatesAutoresizingMaskIntoConstraints = false
            pnl.addSubview(jobTitle)
            
            pnl.addConstraint(NSLayoutConstraint(item: jobTitle, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: pnl, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 5.0))
            pnl.addConstraint(NSLayoutConstraint(item: jobTitle, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: pnl, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: 5.0))
            pnl.addConstraint(NSLayoutConstraint(item: jobTitle, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: pnl, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: 5.0))
            
            panels.append(pnl)
        }
        
        var index = 0
        for panel in panels{
            panel.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(panel)
            
            contentView.addConstraint(NSLayoutConstraint(item: panel, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 0))
            contentView.addConstraint(NSLayoutConstraint(item: panel, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: 0))
            contentView.addConstraint(NSLayoutConstraint(item: panel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 150))
            
            if(index == 0){
                contentView.addConstraint(NSLayoutConstraint(item: panel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: 8.0))
            } else{
                print(index-1)
                contentView.addConstraint(NSLayoutConstraint(item: panel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: panels[index-1], attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 8.0))
            }
            
            if(index == panels.count-1)
            {
                contentView.addConstraint(NSLayoutConstraint(item: panel, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: contentView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: -8.0))
            }
            index+=1
        }
        
        /*for x in 0...0{
        
            let views = UIView(frame: CGRect(x: 0, y: newY, width: SCREEN_SIZE.width, height: 100))
            views.backgroundColor = UIColor.white
            
            let label:UILabel = UILabel()
            label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
            label.numberOfLines = 1
            label.text = "Test \(x)"
            label.textColor = UIColor.red
            label.backgroundColor = UIColor.yellow
            label.sizeToFit()
            
            views.addSubview(label)
            /*label.translatesAutoresizingMaskIntoConstraints = true
            label.heightAnchor.constraint(equalToConstant: 50).isActive = true
            label.widthAnchor.constraint(equalToConstant: 100).isActive = true*/
            
            let leadingConstraint = NSLayoutConstraint(item: views, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: scrollView, attribute: NSLayoutAttribute.leading, multiplier: 1, constant: 0)
            
            let trailingConstraint = NSLayoutConstraint(item: views, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: scrollView, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: 0)
            
            views.addConstraints([leadingConstraint,trailingConstraint])
            
            scrollView.addSubview(views)
            
            newY += views.frame.height + 10
            
        }
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: newY)*/
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // 1
        let nav = self.navigationController?.navigationBar
        // 2
        //let color = UIColor.init(red: 22, green: 176, blue: 221, alpha: 1)
        nav?.barStyle = UIBarStyle.default
        nav?.barTintColor = UIColor.init(red: 0.08, green: 0.7, blue: 0.98, alpha: 1)
        nav?.tintColor = UIColor.yellow
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 82, height: 16))
        imageView.contentMode = .scaleAspectFit
        // 4
        let image = UIImage(named: "logo_qolega")
        imageView.image = image
        // 5
        navigationItem.titleView = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
