
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    var MyTimer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        optionA.isEnabled = false
        optionB.isEnabled = false
        optionC.isEnabled = false
        optionD.isEnabled = false
        
        
        
        if sender.tag == selectedAnswer {
            sender.backgroundColor = .green
            
            score += 1
        }else{
           
            sender.backgroundColor = .red
            if selectedAnswer == optionA.tag {
                optionA.backgroundColor = .green
            }
            if selectedAnswer == optionB.tag {
                optionB.backgroundColor = .green
            }
            if selectedAnswer == optionC.tag {
                optionC.backgroundColor = .green
            }
            if selectedAnswer == optionD.tag {
                optionD.backgroundColor = .green
            }
        }
        questionNumber += 1

    }
    

    var NFScore = ""
    
     @objc func updateQuestion(){
        
        
        if questionNumber <= allQuestions.list.count - 1{
            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
            optionA.backgroundColor = .cyan
            optionB.backgroundColor = .cyan
            optionC.backgroundColor = .cyan
            optionD.backgroundColor = .cyan
            optionA.isEnabled = true
            optionB.isEnabled = true
            optionC.isEnabled = true
            optionD.isEnabled = true
        }else {
          /*  let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)*/
            
           
            
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "EndViewController") as! EndViewController
            self.present(controller, animated: true)
            
            
        }
        
        
    }
    
    func updateUI(){
        self.NFScore = scoreLabel.text!
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    
    
    
    


}

