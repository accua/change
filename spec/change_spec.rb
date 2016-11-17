require("rspec")
require("change")

describe("Float#disp_change") do
  it("Will make change in quarter increments") do
    expect(1.00.disp_change(1.25)).to(eq("1 quarter(s)"))
  end
end
