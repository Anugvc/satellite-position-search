# General
- This package contains examples of using the **Astrodynamics Standards (AS)** libraries in Rust

## Preparing to Run:
- Ensure Rust can run on your box

## Troubleshooting
- Not sure why, but compiling on Windows gives "empty search path given via `-L`" error message.
  If you add "cargo build --verbose", you'll see -L "" and don't know where it gets that.  So
  setting a short explicit minimal path worked.  ...sometimes.   Might be a bug in the rust
  compiler.

