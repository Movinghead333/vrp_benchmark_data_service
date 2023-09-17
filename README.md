# VrpBenchmarkDataService

**Description**:

This project aims to make benchmark data for developing vehicle route optimization algorithms more accessisble. To achieve this, the project provides a REST-API for researchers to access common resources associated with the vehicles routing problem. These include:

- Vehicle Routing Problem instances (and aggreations of these to form benchmark suites)
- Vehicle Routing Problem Solutions
- Vehicle Routing Problem solvers (which include a solver version and are further split into solver instances for varying parameter sets)

The vision for this project is to provide researchers both the ability to fetch problems instances, but at the same time upload solutions for solvers they invented. The found solutions can then easily be compared to other solver instances be it of a different parameter set, solver version or entirely differnt solvers from other researches.

**Technology stack**: The programming language used it `Elixir` while the chosen framework is `Phoenix`.

**Status**: This project is still in development and has not yet hit a deployable state.

**Related content**:

The website that best matched my vision would be http://www.vrp-rep.org/, which offers many of the capabitilies I described but lacks an API for easy and automated access.

## Installation

1. Install erlang 25.1.2 and 1.14.1-otp-25 (e.g. via asdf package manager).
2. Clone the repo and run `mix deps.get` to install required dependencies.
3. Run `mix ecto.reset` to reset the database and insert the seed data.
4. Run `mix phx.server` to start server hosting the API.
