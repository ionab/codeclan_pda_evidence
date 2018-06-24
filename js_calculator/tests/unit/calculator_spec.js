var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  it('should add the value of the number passed in to the existing total by calling calculator.add',function(){
    calculator.add(3);
    assert.strictEqual(3, calculator.runningTotal);
  })

  it('should subtract the value of the number passed in from the existing total by calling calculator.subtract',function(){
    calculator.subtract(2);
    assert.strictEqual(-2, calculator.runningTotal);
  })

  it('should multiply two numbers togethether using calculator.multiply',function(){
    calculator.previousTotal = 3;
    calculator.multiply(2);
    assert.strictEqual(6, calculator.runningTotal);
  })

  it('should divide two numbers togethether using calculator.divide',function(){
    calculator.previousTotal = 10;
    calculator.divide(2);
    assert.strictEqual(5, calculator.runningTotal);
  })
  // when a number is clicked, if a previous operation has just been completed,
  // or there is a zero in the running total, clear the running total, and reset
  // the `newTotal` flag

  it('it should set the newTotal to false and clear the running total on calculator.numberClick',function(){
    calculator.numberClick(1);
    assert.strictEqual(false, calculator.newTotal);
    assert.strictEqual(1, calculator.runningTotal);
  })
  it('should take in operators using calculator.operatorClick and perform the correct caulculation',function(){
    calculator.numberClick(5);
    calculator.operatorClick("+");
    calculator.numberClick(5);
    calculator.operatorClick("=");
    assert.strictEqual(10, calculator.runningTotal);
  })

  it('should clear previous operator and previos total to null and set running total to zero using calculator.clearClick', function(){
    calculator.clearClick();
    assert.strictEqual(null, calculator.previousOperator);
    assert.strictEqual(null, calculator.previousTotal);
    assert.strictEqual(0, calculator.runningTotal);
  })
});
