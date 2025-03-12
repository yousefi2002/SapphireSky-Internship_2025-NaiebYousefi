// Explain the purpose of push() and pop() in a stack.

// The push() and pop() methods are fundamental operations in a stack data structure, each serving a specific purpose:
//
// push():
//
// The purpose of push() is to add an element to the top of the stack.
// When you call push(), the element is inserted at the "top" of the stack, which means it is the most recent element that was added.
// In terms of the stack's LIFO (Last In, First Out) principle, the element you push onto the stack is the first one that will be popped off when you call pop().

// pop():
//
// The purpose of pop() is to remove and return the top element from the stack.
// When you call pop(), the stack removes the element that was last added (i.e., the top element).
// After popping the top element, the next element in the stack becomes the new top.
// If the stack is empty, a pop() operation would typically raise an error or return a special value (depending on the implementation).