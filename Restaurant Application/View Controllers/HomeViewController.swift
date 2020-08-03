//
//  HomeViewController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/24/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit

import FirebaseFirestore
import Firebase

class HomeViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var storeViewTable: UITableView!
    var stores: [StoreData] = []
    let db = Firestore.firestore()
    
    private var thoughtsCollectionRef: CollectionReference!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addLeftImage()
        storeViewTable.clipsToBounds = true
        storeViewTable.layer.cornerRadius = 30
        storeViewTable.delegate = self
        storeViewTable.dataSource = self
        self.storeViewTable.reloadData()
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        thoughtsCollectionRef = Firestore.firestore().collection("stores")
        thoughtsCollectionRef.getDocuments { (snapshot, error) in
            if let err = error {
                debugPrint("ERROR FETCHING DOCS: \(err)")
            }
            else
            {
                guard let snap = snapshot else {return}
                for document in snap.documents {
                    let data = document.data()
                    if let numOfStores = data["numOfStores"] as? Int //figuring out how many stores there are
                    {
                        for index in 1...numOfStores {
                            
                            if let storeId = data["store\(index)"] as? String
                            {
                                self.createStoreCell(storeId: storeId)
                                
                            }
                            else
                            {
                                if let err = error
                                {
                                    debugPrint("Error fetching storeId: \(err)")
                                }
                            }
                            
                        }
                    }
                    else
                    {
                        if let err = error
                        {
                            debugPrint("Error fetching number of stores: \(err)")
                        }
                    }
                }
            }
        }
    }
    
    
    func createStoreCell(storeId: String)
    {
        thoughtsCollectionRef.document(storeId).getDocument { (snapshot, error) in
            if let err = error {
                debugPrint("ERROR FETCHING DOCS: \(err)")
            }
            else
            {
                guard let snap = snapshot else {return}
                if let data = snap.data()
                {
                    let description = data["description"] as? String
                    let name = data["name"] as? String
                    let rating = data["rating"] as? Double
                    let store = StoreData(name: name!, description: description!, rating: rating!, id: storeId)
                    self.stores.append(store)
                    self.storeViewTable.reloadData()
                    
                }
                else
                {
                    if let err = error
                    {
                        debugPrint("ERROR FETCHING STORE DATA: \(err)")
                    }
                }
            }
        }
    }
    
    
    func addLeftImage()
    {
        searchTextField.clipsToBounds = true
        let img = #imageLiteral(resourceName: "SearchIcon")
        let leftImageView = UIImageView(frame: CGRect(x: 10, y: 5, width: img.size.width, height: img.size.height))
        leftImageView.image = #imageLiteral(resourceName: "SearchIcon")
        
        let iconContainerView: UIView = UIView (frame: CGRect(x: 20, y: 0, width: img.size.width+15, height: img.size.height+10))
        iconContainerView.addSubview(leftImageView)
        
        searchTextField.leftView = iconContainerView
        searchTextField.leftViewMode = .always
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoreCell") as! StoreTableViewCell
        let store = stores[indexPath.row]
        cell.setStore(store: store)
        return cell

    }
}
