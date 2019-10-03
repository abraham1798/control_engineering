function [z] = id(x,y)

    alto=max(y);
    final=y(end);
    if alto == final 
        z = 1
    else
        z = 2
    end