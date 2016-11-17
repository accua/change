class Float
  define_method(:disp_change) do |cash|
    quarters_get = 0
    dimes_get = 0
    nickels_get = 0
    pennies_get = 0
    remainder = 0

    change_get = cash - self

    if change_get >= 0.25
      disp_q = (change_get / 0.25).to_i
      counter = 0
      until (counter.== (disp_q)) || (counter == 8)
        counter = counter.+(1)
        quarters_get = counter
      end
      remainder = change_get - (quarters_get * 0.25)
    elsif change_get < 0.25
      remainder = change_get
    end

    if remainder >= 0.10
    disp_d = (remainder / 0.10).to_i
    counter = 0
      until counter == (disp_d)
        counter = counter + 1
        dimes_get = counter
      end
    remainder = remainder - (dimes_get * 0.10)
    elsif change_get < 0.10
    remainder = change_get
    end

    if remainder >= 0.05
    disp_n = (remainder / 0.05).to_i
    counter = 0
      until counter == (disp_n)
        counter = counter + 1
        nickels_get = counter
      end
    remainder = remainder - (nickels_get * 0.05)
    elsif change_get < 0.05
    remainder = change_get
    end

    if remainder < 0.05
    disp_p = (remainder / 0.01).to_i
    counter = 0
      until counter == (disp_p)
        counter = counter + 1
        pennies_get = counter
      end
    end
    message = quarters_get.to_s + " quarter(s) and " + dimes_get.to_s + " dime(s) and " + nickels_get.to_s + " nickel(s) and " + pennies_get.to_s + " pennie(s)"

    if quarters_get == 8
      "We are now out of quarters, you will recieve the rest of your change in other denominations as available. " + message
    else
      message
    end
  end
end
