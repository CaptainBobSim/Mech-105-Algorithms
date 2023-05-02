format long

fakeX = -.20 




exact =  exp(-1)
approx = 1 - fakeX % + fakeX^2/fact(2) - x^3/fact(3)

errorPercent = abs(((exact-approx)/exact)*100)


%put est into function
