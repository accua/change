require("rspec")
require("change")

describe("Float#disp_change") do
  it("Will make change in quarter increments") do
    expect(1.00.disp_change(1.25)).to(eq("1 quarter(s) and 0 dime(s) and 0 nickel(s) and 0 pennie(s)"))
  end

  it("will make the remaining change after quarters in dime increments") do
    expect(1.00.disp_change(1.35)).to(eq("1 quarter(s) and 1 dime(s) and 0 nickel(s) and 0 pennie(s)"))
  end

  it("will make the remaining change after quarters, and dimes in nickels") do
    expect(1.00.disp_change(1.05)).to(eq("0 quarter(s) and 0 dime(s) and 1 nickel(s) and 0 pennie(s)"))
  end

  it("will make the remaining change after quarters, dimes, and nickels, into pennies") do
    expect(1.23.disp_change(1.50)).to(eq("1 quarter(s) and 0 dime(s) and 0 nickel(s) and 2 pennie(s)"))
  end
  it("Will inhibit the amount of quarters to 8 and make remaining change out of smaller denominations in the least amount of coins possible") do
    expect(2.44.disp_change(5.00)).to(eq("We are now out of quarters, you will recieve the rest of your change in other denominations as available. 8 quarter(s) and 5 dime(s) and 1 nickel(s) and 1 pennie(s)"))
  end
end
