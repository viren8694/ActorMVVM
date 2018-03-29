//
//  ViewController.swift
//  Actors_MVVM
//
//  Created by Viren Patel on 3/28/18.
//  Copyright © 2018 Viren Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Actor_tableview: UITableView!
    var viewModel: ViewModel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        Actor_tableview.estimatedRowHeight = 104
        Actor_tableview.rowHeight = UITableViewAutomaticDimension
        viewModel = ViewModel()
        viewModel.getActors
        {
            self.Actor_tableview.reloadData()
        }
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return viewModel.numberOfRowsToDisplay()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ActorNameCell
        cell.Actor_name_lbl.text = viewModel.ActornameToDisplay(for: indexPath)
        cell.Actor_country_lbl.text = viewModel.CountryNameToDispaly(for: indexPath)
        cell.Actor_Detail_lbl.text = viewModel.DiscriptionToDisplay(for: indexPath)
        DispatchQueue.global().async
        {
            let url = URL(string: self.viewModel.ImageURLToDisplay(for: indexPath))
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async
            {
                cell.Actor_Image.image = UIImage(data: data!)
            }
        }
        return cell
    }
}

