class Float
  define_method(:disp_change) do |cash|
    change_get = cash - self
      if (change_get.modulo(0.25) == 0)
        disp_q = change_get / 0.25
        counter = 0
          until counter.==(disp_q)
          counter = counter.+(1)
          quarters_get = counter
          end
        quarters_get.to_s + " quarter(s)"
      end
  end
end
