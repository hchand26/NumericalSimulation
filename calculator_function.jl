 function calculator(x, y, operation)
     if operation == "+"               x+y
     elseif operation == "-"               x-y
     elseif operation == "*"               x*y
     elseif operation == "/"               x/y
     else               println("Incorrect operation")
         #return 0
 end       end

  calculator(10,20, "*")
  show(calculator(10,20, "*")) 
