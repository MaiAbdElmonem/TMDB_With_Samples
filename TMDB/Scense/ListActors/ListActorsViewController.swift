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

    
    override func viewDidLoad() {
        actorsTableView.dataSource=self
        actorsTableView.delegate=self
        //register custom cell
        let actorCell = UINib (nibName: "ActorTableViewCell", bundle: nil)
        actorsTableView.register(actorCell, forCellReuseIdentifier: "ActorCell")
        presenter.loadActors()
        adapter.reloadData = reloadTableData
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adapter.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActorCell", for: indexPath) as! ActorTableViewCell
        let getPersonObject = adapter.getPerson(index: indexPath.row)
        cell.configureCell(person: getPersonObject)
        return cell
    }
    
    func getActorList(array: [Person]) {
        adapter.add(items: array)
    }
    
    func reloadTableData() {
        actorsTableView.reloadData()
    }
}
