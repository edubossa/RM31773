//
//  BeersTableViewController.swift
//  RM31773
//
//  Created by Eduardo Wallace on 21/11/2017.
//  Copyright © 2017 Eduardo Wallace. All rights reserved.
//

import UIKit
import Kingfisher

class BeersTableViewController: UITableViewController {
    
    var beers: [Beer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func loadBeers() {
        REST.loadBeers { (beers: [Beer]?) in
            if let beers = beers {
                self.beers = beers
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = "Lista de Cervejas"
        loadBeers()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! BeerViewController
        vc.beer = beers[tableView.indexPathForSelectedRow!.row]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "beerCell", for: indexPath) as! BeerTableViewCell
        let beer = beers[indexPath.row]
        cell.lbName.text = beer.name
        cell.lbAbv.text = "\(beer.abv)"
        if let url = URL(string: beer.image_url) {
          cell.ivImage.kf.setImage(with: url)
        }
        return cell
    }

}
