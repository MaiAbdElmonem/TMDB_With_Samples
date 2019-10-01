//
//  ListActorsViewController.swift
//  Sample MVP
//
//  Created by Bassem Abbas on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class ListActorsViewController: BaseViewController< ListActorsPresenter > , ListActorsViewProtocal, UITableViewDelegate, UITableViewDataSource{
  
    
    @IBOutlet weak var actorsTableView: UITableView!
    
    var adapter = ListActorsAdapter()
    var presenter = ListActorsPresenterProtocal
    
    override func viewDidLoad() {
        actorsTableView.dataSource=self
        actorsTableView.delegate=self
        //register custom cell
        let actorCell = UINib (nibName: "ActorTableViewCell", bundle: nil)
        actorsTableView.register(actorCell, forCellReuseIdentifier: "ActorTableViewCell")
        adapter.reloadData = reloadTableData
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adapter.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func getActorList(array: [Person]) {
        <#code#>
    }
    
    func reloadTableData() {
        actorsTableView.reloadData()
    }
}
