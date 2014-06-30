// Playground - noun: a place where people can play

//Objects and Classes

/*syntax  class <classname>{

}*/

class Shape {
    var numberOfShapes = 7
     func simpleDescription () -> String
     {
        
        return "A Shape with \(numberOfShapes) sides."
    }
    
}

// How to creat an instance of a classs putting parentheses after the class name

var shape = Shape()

shape.numberOfShapes

var shapeDescription = shape.simpleDescription()

//class with an initializers

class NamedShapes {
    
    var numberOfSlides :Int = 0
    var name: String
    
    
    init (name:String){
      //self is used to distinguish between name and class name
        self.name = name
    }
    
    func simpleDescription() ->String
    {
        return "A shape with \(numberOfSlides) sildes."
    }
    
}


// called the class with initializer 
var namedShaped = NamedShapes(name: "nikhil")

//over the superclass by subclass method
class Square :NamedShapes{
    
    var sideLength:Double
    
    init(sideLength:Double,name :String){
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSlides=4
    }
    
    func area () ->Double{
        
        return sideLength * sideLength
    }
  override func simpleDescription() -> String
  {
    
    return "A square with sides of length \(sideLength)"
    }
    
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


//Properties getter and setter

class EquilateralTriangle :NamedShapes{
    
    
    var sideLength :Double = 0.0
    
    init(sideLength :Double ,name : String)
    {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSlides = 3
    }
    
    var perimeter :Double{
    
    get{
        return 3.0 * sideLength
    }
    
    set {
        
        sideLength = newValue / 3.0
    }
    
    }
    override func simpleDescription() -> String{
        
      
            
            return "An equilareral triangle wiht sides of lenght  \(sideLength). "
        
    }
    
}


var triangle = EquilateralTriangle(sideLength: 3.1, name: " a triangle")


triangle.perimeter

triangle.perimeter=9.9

triangle.sideLength


// to provide code that is run before  and after setting a new value , user wilSet and didSet


class TriangleAndSquare {
    
    var triangle :EquilateralTriangle{
    
    willSet {
square.sideLength = newValue.sideLength

        
    }
    
    }
    
    var square :Square{
    
    willSet {
triangle.sideLength = newValue.sideLength
        

    }
    
    }
    init(size :Double , name : String)
    {
        square = Square(sideLength: size, name: name)
        
        triangle = EquilateralTriangle (sideLength :size , name: name)
        
        
    }
    
}


var triangelAndSquare  = TriangleAndSquare(size: 10, name: "another test shape")

triangelAndSquare.square.sideLength
triangelAndSquare.triangle.sideLength
triangelAndSquare.square = Square(sideLength: 50, name: "larger Square")

triangelAndSquare.triangle.sideLength


//We can specify second name for a function
class Counter{
    
    var count : Int = 0
    
    func incrementBy(amount: Int , numberofTimes times :Int){
        
       count += amount * times
        
    }
    
}

var counter = Counter()


counter.incrementBy(2, numberofTimes: 7
)

// Optional values

let optionalSquare : Square? = Square(sideLength : 2.5 , name : " optional square value")
let sideLength = optionalSquare?.sideLength




































