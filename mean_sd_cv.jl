function mean(lst)
        sum = 0
    for i in 1:length(lst)
        sum += lst[i]
    end
    return (sum / length(lst))
end
function stddev(lst)
        sum = 0
    mn = mean(lst)
    for i in 1:length(lst)
        sum += (lst[i]-mn)^2
    end
    return sqrt(sum/length(lst))
end

numbers = [120,112,131,211,312,90]
coefficient_of_variance_x=stddev(numbers)*100/mean(numbers)
println(mean(numbers))
println(stddev(numbers))
println(coefficient_of_variance_x)
