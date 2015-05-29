require 'pry-byebug'
require 'pry'

def valid_pnr? (pnr:)
  lastnr = pnr.length - 1
  i = -1
  summa = 0
  pnr.each_char do |nummer|
    i += 1
    if i != lastnr
      if i.even?
        nr = nummer.to_i
      else
        nr = nummer.to_i * 2
      end
      summa += nr
    end
  end
  summa += pnr[lastnr].to_i

  if summa % 10 == 0
    p "True"
  else
    p "False"
  end
end
valid_pnr?(pnr:"811218-9860")