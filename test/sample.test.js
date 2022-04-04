import assert from 'assert';
import sum from '../src/sample.js';

describe("App", function(){
  it("should test if function returns 1+2 = 3", function(){
      assert.equal(sum(1,2), 3);
  });
});
