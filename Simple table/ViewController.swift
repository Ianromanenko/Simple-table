import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    private let movies = ["Batman", "Blade Runner 2049", "Thor: Ragnarok", "Just asleep", "Wonderwoman", "Dark Tower", "Star Wars: The Last Jedi"]
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if (cell == nil){
            cell = UITableViewCell(
            style: UITableViewCellStyle.default,
            reuseIdentifier: simpleTableIdentifier)
        }
        cell?.textLabel?.text = movies[indexPath.row]
        return cell!
    }
    

    
    
    
    
    
    
    

    
}

