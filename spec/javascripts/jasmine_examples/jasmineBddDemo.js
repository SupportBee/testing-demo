function factorial(number) {
  if (number < 0) {
    throw new Error;
  }

  var result = 1;
  for (var i = 1; i <= number; i++) {
    result = result * i;
  }

  return result;
};

describe("factorial", function () {
  it("computes a factorial", function () {
    var result = factorial(4);
    expect(result).toBe(24);
  });

  it("computes a different factorial", function () {
    var result = factorial(5);
    expect(result).toBe(120);
  });

  describe("when number is 1", function () {
    it("returns 1", function () {
      var result = factorial(1);
      expect(result).toBe(1);
    })
  });

  describe("when number is 0", function () {
    it("returns 1", function () {
      var result = factorial(0);
      expect(result).toBe(1);
    })
  });

  describe("when number is negative", function () {
    it("throws an error", function () {
      var computeNegativeFacorial = function () {
        factorial(-10);
      }

      expect(computeNegativeFacorial).toThrowError();
    })
  });
});
