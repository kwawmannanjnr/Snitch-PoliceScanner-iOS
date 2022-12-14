//
//  ViewController.swift
//  Snitch PoliceScanner
//
//  Created by Kwaw Annan on 10/14/22.
//

import UIKit
import AVFAudio
import Foundation
import AVKit


class ViewController: UIViewController {
    
    
    var tableView:UITableView!
    
    let animalNames = ["Dogs", "Cats", "Rabbits", "Horses"]


//    var feed: FeedManager = FeedManager()
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        feed.getFeedData()
        audioPlayer(url: URL(string:"http://p5.broadcastify.com/z4d29xtc5rbpn7v")!)        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        
        setupTableView()
    }
    func setupTableView() {
        tableView = UITableView(frame: view.bounds)
                view.addSubview(tableView)
                
                tableView.register(UITableViewCell.self,
                                   forCellReuseIdentifier: "AnimalCell")

                tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
                tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
                tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
                
                tableView.dataSource = self
                tableView.delegate = self
    }
    
    
//    func play(url:URL) {
//        print("playing \(url)")
//        do {
//            let player = try AVPl(contentsOf: url)
//            player.prepareToPlay()
////              player.volume = 1.0
//            player.play()
//        } catch let error as NSError {
////              player = nil
//            print(error.localizedDescription)
//        } catch {
//            print("AVAudioPlayer init failed")
//        }
//
//    }
    
    var player: AVPlayer?
    func audioPlayer(url:URL) {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            player = AVPlayer(url: URL.init(string: url.relativeString)!)

              //This is for a player screen, if you don't want to show a player screen you comment this part

//              let controller = AVPlayerViewController()
//              controller.player = player
//              controller.showsPlaybackControls = false
//              self.addChild(controller)
//              let screenSize = UIScreen.main.bounds.size
//              let videoFrame = CGRect(x: 0, y: 130, width: screenSize.width, height: (screenSize.height - 130) / 2)
//              controller.view.frame = videoFrame
//              self.view.addSubview(controller.view)
              // till here

              player?.play()
            } catch {
            }
    }
    


}
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell")! as UITableViewCell
        cell.textLabel?.text = animalNames[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(animalNames[indexPath.row])
    }}

//protocol FeedManagerDelegate {
//    func didLoadFeeds(_ FeedManager: FeedManager, feeds: Feeds)
//    func didFailWithError(error: Error)
//}
//
//  struct FeedManager {
//
//    var delegate : FeedManagerDelegate?
//
//
//    func getFeedData() {
//
//        // 1. Create URL
//        if let feedURL = URL(string: "https://api.broadcastify.com/audio/?a=feeds&type=json&key=15670403") {
//
//            // 2. Create a URLSession
//            let session = URLSession(configuration: .default)
//
//            // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
//            let task = session.dataTask(with: feedURL) { data, response, error in
//
//                if error != nil {
//                    print(error!)
//                    return
//                }
//
//                if let feedData = data {
//                    if let price = self.parseJSON(feedData) {
//                        self.delegate?.didLoadFeeds(self, feeds: price)
//                    }
//                }
//
//            }
//
//            task.resume()
//
//        }
//
//    }
//
//    func parseJSON(_ data: Data) ->Feeds? {
//
//        let decoder = JSONDecoder()
//        do {
//            let decodedData = try decoder.decode(Feeds.self, from: data)
//            let data = decodedData
//            return data
//
//        } catch {
//            delegate?.didFailWithError(error: error)
//            return nil
//        }
//
//    }
      
      


    
//}
