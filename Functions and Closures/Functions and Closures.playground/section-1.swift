//Functions and Closures

//use func to declare a function

// Call a function by name and list of arugments in parentheses

//Use -> to seperate the parameter names and types from the fuction's return type

//Example

func greet(name:String, day:String) ->String{
    
    return "Hello \(name), today  is \(day)"
}


greet("Bob", "Tuesday")



// Use a tuple to return multiple values from a function

func getGasPrices()->(Double,Double,Double)
{
    
    return (3.39,3.69,3.79)
}

getGasPrices();



// Function can also take a variable number of arguments, collecting them into an array

func sumOf(numbers:Int...) -> Int{
    
    var sum = 0
    for number in numbers{
        
    
    sum += number
    }

return sum


}
// sum of nil numbers
sumOf()

//sum of 3 numbers

sumOf(23,34,25)

//sum of 5 numbers
sumOf(45,34,56,57)


//Fuction can be nested

//Nested fucntions have access to variables that were declared in the outer function

//Nested function can be used to organize the code in a function that is long or complex


func returnFifteen()-> Int
{
    
    var y = 10
    
    func add ()
    {
        
        y += 5
    }
    add();
    
    return y;
}


returnFifteen()


// Function are a first class type . Function can return another fuction as its value

func makeIncrementer() -> (Int ->Int)
{
    
    func addOne(number :Int) ->Int
    {
        
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer();

increment(7)



// Function can take another function as one of its arguments


func hasAnyMatches(list:Int[],condition : Int ->Bool) ->Bool{
    
    for item in list {
        
        if condition(item)
        {
            
            return true
        }
        
    }
    return false
}

func lessThanTen(number: Int)->Bool{
    
    return number < 10
}

var numbers  = [20,19,7,12]

hasAnyMatches(numbers, lessThanTen)



// functions are actually a special case of  closures . 

// We can write a closure without a name by surronding code with braces ({})

// Use { in } to seperate the arguments  and return type from the body


numbers.map({
    
    (number : Int) -> Int in

    let result = 3 * number
    
    return result
    
    
    
    })

// type  of closure

// we have several option to write a closure  more concisely

// when a closure's type is already known, such as the callback from delegate , you can omit the type of its parameters.its return type, or both . Single statement closures implicitly return the value of their only statment

//type I

 numbers.map({number in 3 * number})
 
 //type II
 
 // You can refer to parameters by number instead of by  name -- 
 
 // Closure passed as the last argument to a function can appear immediately after the parentheses
 
sort([1,5,3,12,2]){ $0 > $1}























