// Playground - noun: a place where people can play


// if and { for in } example
let individualScores = [75,43,103,87,12]
var teamScore = 0

for score in individualScores{
    
    if score>50
    {
        
        teamScore+=3
    
    }
    else
    
    {
        
        teamScore+=1
    }
}

teamScore


// Optional values 
var optionalString:String? = "hello"

optionalString == nil

var optionalName:String? = "John Appleased"

var greeting = "Hello!"


if let name = optionalName {

    greeting = "Hello , \(name)"
    
}

//when  optional value is set...
optionalName = nil

if let name = optionalName {
    
    greeting = "Hello , \(name)"
    
}
else
{
        greeting = "Hello , nill value)"
}

//switches examples

let vegetable = "red pepper"




switch vegetable {
    
    case "celery":
    
        let vegetableComment = " Add some raisins and make ants on a log"
    
    case "cucumber" , "watercress":
    let vegetableComment = "That would make a good tea sandwich."
    
    
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a Spicy \(x)?"
    
default:
    
    let vegetableComment = "Everything tastes good in soup"
    
}

//For - In example with dictionary


let interestingNumbers = [

    "Prime":[2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
    
]

var largest = 0

for (kind, numbers) in interestingNumbers
{
    for number in numbers{
        
        
        if number > largest {
            
            largest = number
        }
    }
    
}

largest

// Using while loops

var n = 2

while n < 100
{
    
    n = n * 2
}

n

var m = 2
do {

m = m * 2
} while m < 100

m

// for loop range of index example (...) to make range of indexes or by writing  an explicit intialization , condition, and incrementation

var firstForLoop = 0

for i in 0...3{
    
    firstForLoop+=i
}

firstForLoop

var secondForLoop = 0

for var i = 0; i < 3 ; ++i {
    
secondForLoop += 1

}

secondForLoop









