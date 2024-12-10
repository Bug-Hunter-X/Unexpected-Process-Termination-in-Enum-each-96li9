# Elixir Enum.each and Process Termination

This repository demonstrates a subtle issue that can arise when using `Enum.each` in Elixir along with process termination. The included code snippet showcases a scenario where premature process termination might lead to unexpected results.

## The Problem

The `bug.ex` file contains code designed to iterate over a list, printing each element.  Upon encountering the number 3, the process is intended to exit gracefully.  However, this does not function as expected.  The main issue is the improper handling of process termination within `Enum.each`. `Enum.each` doesn't guarantee the execution of the rest of the statements after the `Process.exit` call within the anonymous function. 