def integral(funk, zacetek, konec, st_podintervalov)
  interval = (konec - zacetek) / st_podintervalov.to_f
  (zacetek...konec).step(interval).reduce(0) do |sum, a|
    b = a + interval
    vr = (b - a) * (funk.call(a) + funk.call(b)) / 2
    sum + vr
  end
end

funk = lambda { |x| x }
# integriramo funkcijo y = x od x = 0 do x = 45, podintervalov je 40
p integral(funk, 0, 45, 40) # => 1012.5