//
// This is only a SKELETON file for the 'Hello World' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

class HelloWorld {
  hello(name) {
    //
    // YOUR CODE GOES HERE
    //
    if (name === undefined) {
      return 'Hello, World!'
    } else {
      return 'Hello, ' + name + '!'
    }
  }
}

export default HelloWorld;
