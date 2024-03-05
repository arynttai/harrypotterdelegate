//
//  ViewController.swift
//  Delegatdz
//
//  Created by Swift on 01.03.2024.
//

import UIKit
import SnapKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let characters: [HarryPotterCharacter] = [
        HarryPotterCharacter(name: "Harry", surname: "Potter", house: "Gryffindor", wand: "Holly, 11', phoenix feather core"),
        HarryPotterCharacter(name: "Hermione", surname: "Granger", house: "Gryffindor", wand: "Vine, 10 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Ron", surname: "Weasley", house: "Gryffindor", wand: "Willow, 14', unicorn hair core"),
        HarryPotterCharacter(name: "Albus", surname: "Dumbledore", house: "Gryffindor", wand: "Elder, 15', thestral tail hair core"),
        HarryPotterCharacter(name: "Severus", surname: "Snape", house: "Slytherin", wand: "Yew, 13 ½', phoenix feather core"),
        HarryPotterCharacter(name: "Minerva", surname: "McGonagall", house: "Gryffindor", wand: "Fir, 9 ½', dragon heartstring core"),
        HarryPotterCharacter(name: "Draco", surname: "Malfoy", house: "Slytherin", wand: "Hawthorn, 10', unicorn hair core"),
        HarryPotterCharacter(name: "Luna", surname: "Lovegood", house: "Ravenclaw", wand: "Cherry, 14', unicorn hair core"),
        HarryPotterCharacter(name: "Neville", surname: "Longbottom", house: "Gryffindor", wand: "Cherry, 13', unicorn hair core"),
        HarryPotterCharacter(name: "Ginny", surname: "Weasley", house: "Gryffindor", wand: "Yew, 9', phoenix feather core"),
        HarryPotterCharacter(name: "Sirius", surname: "Black", house: "Gryffindor", wand: "Mahogany, 16', unknown core"),
        HarryPotterCharacter(name: "Remus", surname: "Lupin", house: "Gryffindor", wand: "Cypress, 10 ¼', unicorn hair core"),
        HarryPotterCharacter(name: "Bellatrix", surname: "Lestrange", house: "Slytherin", wand: "Walnut, 12 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Lucius", surname: "Malfoy", house: "Slytherin", wand: "Elm, 18', dragon heartstring core"),
        HarryPotterCharacter(name: "Rubeus", surname: "Hagrid", house: "Gryffindor", wand: "Oak, 16', unknown core")
    ]


    lazy var charactersTableView: UITableView = {
        let table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.register(CharactersTableViewCell.self, forCellReuseIdentifier: "CharactersTableViewCell")
//        table.backgroundColor = .lightGray
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        view.addSubview(charactersTableView)
        charactersTableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharactersTableViewCell", for: indexPath) as? CharactersTableViewCell else { return UITableViewCell() }
        
         cell.nameLabel.text = characters[indexPath.row].name
         cell.surnameLabel.text = characters[indexPath.row].surname
         cell.houseLabel.text = characters[indexPath.row].house
         cell.wandLabel.text = characters[indexPath.row].wand

         switch characters[indexPath.row].house {
         case "Gryffindor":
             cell.backgroundColor = .red
         case "Slytherin":
             cell.backgroundColor = .green
         case "Ravenclaw":
             cell.backgroundColor = .blue
         case "Hufflepuff":
             cell.backgroundColor = .yellow
         default:
             cell.backgroundColor = .white
         }

         return cell
     }
 }
