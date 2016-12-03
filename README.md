# ExApteligent

A library for accessing Apteligent's API from Elixir. Only planning to use the /trends endpoints, so let us know if you are looking for something else.

[![Build Status](https://travis-ci.org/matyjas/ex_apteligent.svg?branch=master)](https://travis-ci.org/matyjas/ex_apteligent)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ex_apteligent` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ex_apteligent, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ex_apteligent` is started before your application:

    ```elixir
    def application do
      [applications: [:ex_apteligent]]
    end
    ```

