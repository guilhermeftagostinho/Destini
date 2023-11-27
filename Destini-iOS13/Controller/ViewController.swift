import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
   var storyBrain = StoryBrain ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        updateUI(storySelected: sender.currentTitle!)
    }
    
    func updateUI(storySelected : String) {
        
        let nextStory = storyBrain.nextStory(userChoice: storySelected)
        
        storyTextLabel.text = storyBrain.stories[nextStory].title
        choice1Button.setTitle(storyBrain.stories[nextStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[nextStory].choice2, for: .normal)
    }
    
    
    
}

