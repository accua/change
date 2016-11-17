class Float
  define_method(:disp_change) do |cash|
    change_get = cash - self
    quarters_get = 0
    dimes_get = 0
      disp_q = (change_get / 0.25).to_i
      counter = 0
      until counter.==(disp_q)
        counter = counter.+(1)
        quarters_get = counter
      end
      remainder = change_get - (0.25 * quarters_get)
      if remainder == 0
        quarters_get.to_s + " quarter(s)"
      elsif remainder > 0
        disp_d = (remainder / 0.10).to_i
        counter = 0
        until counter == (disp_d)
          counter = counter + 1
          dimes_get = counter
        end
        quarters_get.to_s + " quarter(s) and " + dimes_get.to_s + " dime(s)"
      end
  end
end
