# General

This package contains examples of using the **Astrodynamics Standards (AS)** libraries in Swift.
Please read the Programmer's Guide for notes regarding the Mac.

## Swift differences

### Strings:

- Swift strings are not byte-by-byte character arrays because, in general, they are Unicode strings and Unicode characters may be multiple bytes long.  However, in the limited case of strings of only ASCII characters, the text of the string will happen to be stored as contiguous array of signed bytes.

- Swift strings are not NULL terminated, as they are in C, so conversions are necessary when passing strings back and forth.

- Conventionally, when the purpose of the Swift function is to return a string, it is delivered as the return value of the function and not via a pointer parameter.

### Integers

- In C `int` is 32-bits wide; in Swift `Int` is 64-bits wide.  C is using an unnatural `__int64` to assure 64-bits and Swift has to use the somewhat unnatural `Int32` to match C's `int`.

### Arrays

- Swift's array support is primitive, especially multi-dimensional arrays, and even more so when being passed into or out of functions.

### Pointers

- Pointers have been mentioned above and Swift is strict about pointer types. In C, the type that pointer is aimed at is specified (eg `double*`) but that can be coerced (explicitly or implicitly) to any other pointer type. If you try that in Swift it will not compile, the pointee of a pointer is part of the type; `UnsafePointer<Int>` and `UnsafePointer<Double>` are forever different.

### Optionals

- The Optional type is not explicitly available in C, and its implicit use is sometime accidental.  In Swift, an `Optional` represents the strongly typed absence of a value.  An Optional string and an Optional number may both be NULL under the covers but they retain their string and number qualities.

  Optionals are often used as the return value of a function when the function could fail.  The return value of, for example, `Integer("string")` is an optional number because `"string"` might be `"124789"` or it might be `"wombat"`.  In the first case the returned optional number can be resolved to a number, in the case of the Australian marsupial it cannot.  This `Integer` function can consume any string, including nonsense, but it will always return a value and it will not fail.

### Functions

- Swift's function parameters are usually call-by-value.  Though catered for in the language, call-by-reference usage is less common.  Values generated inside a function are typically returned as the function value (if multiple values are returned, that's usually contained in a `struct`).

## Why do we care?

The Swift wrapper functions are all exact analogs of the equivalent C functions, but several of them can be expressed better by taking advantage of Swift’s differences.

Take the use of strings, for example.  The library function `DllMainGetInfo` is defined in the C style as:

```
    void DllMainGetInfo(char infoStr[128]);
```
The direct equivalent in Swift is:
```
    DllMainGetInfo(_ infoStr: UnsafeMutablePointer<CChar>)
```
In this direct C equivalent, the programmer has to deal with string conversion by writing repetitive preamble code which reduces readability and increases the cross-section for errors.  There are several library functions which have the sole purpose of obtaining a string result.

The idiomatic Swift version would be:
```
     dllMainGetInfo() -> String
```
with string conversion inside the function, and in cases where the string emitting function could fail, an optional string would be returned.

A lesser friction appears when an error code is emitted as a C `int`, a 32-bit value (typically zero or non-zero) and the Swift programmer's natural integer is 64-bits, forcing a coercion to avoid compiler complaints.

### Driver on wrappers

In those cases where a more 'Swifty' equivalent function could be used they are provided in the `drivers` directory, and the programmer can make a choice.  Note that many of the library functions have no Swifty equivalent, because having one wouldn’t improve how it would be called from Swift.

Essentially, these driver functions are a thin layer of code laid over the thin layer that performs the basic Swift matching to the dynamic library entry points.

The 'Swifty' functions must be named differently from their equivalents.
