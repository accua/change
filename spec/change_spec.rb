require("rspec")
require("change")

describe("Float#disp_change") do
  it("Will make change in quarter increments") do
    expect(1.00.disp_change(1.25)).to(eq("1 quarter(s)"))
  end

  it("will make the remaing change after quarters in dime increments") do
    expect(1.00.disp_change(1.35)).to(eq("1 quarter(s) and 1 dime(s)"))
  end
end
