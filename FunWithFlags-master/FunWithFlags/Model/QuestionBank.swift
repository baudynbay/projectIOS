

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(image: "flag1", questionText: "Where was olimpic game 2000?", choiceA: "A. Haiti", choiceB: "B. Suriname", choiceC: "C. Puerto Rico", choiceD: "D. China", answer: 4))
        
        list.append(Question(image: "flag2", questionText: "How many squares can you count in the image", choiceA: "A. 16", choiceB: "B. 32", choiceC: "C. 40", choiceD: "55", answer: 3))
        
        list.append(Question(image: "flag3", questionText: "How many triangles (one or more segments) can you count in this image?", choiceA: "A. 22", choiceB: "B. 24", choiceC: "C. 40", choiceD: "D. 16", answer: 2))
        
        list.append(Question(image: "flag4", questionText: "There are two identical clowns below. Can you find them?", choiceA: "A. 2 and 6", choiceB: "B. 4 and 6", choiceC: "C. 1 and 3", choiceD: "D. 4 ans 5", answer: 1))
        
        list.append(Question(image: "flag5" , questionText: "How many squares can be made by joining 4 of the points in the grid below? They can be any size and orientation but all sides must be equal in length.", choiceA: "A. 32" , choiceB: "B. 42" , choiceC: "C. 16" , choiceD: "D. 11", answer: 4))
        
        list.append(Question(image: "flag15" , questionText: "What number comes next in the number sequence below?", choiceA: "A. 42" , choiceB: "B. 60" , choiceC: "C. 54" , choiceD: "D. 47", answer: 1))
    }
}
