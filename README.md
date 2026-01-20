# nuXmv Examples
A collection of timed and untimed _nuXmv_ models that I have created while learning the tool.

## Dependencies
- _nuXmv_.
- For the automatic model checking scripts to work, the variable `nuxmv` in [scripts/config](./scripts/config) must point to a _nuXmv_ binary.
- __Work in Progress:__ For the automatic model generation from c files to work, the `c2kratos` variable in [scripts/config](./scripts/config) must point to the `c2kratos.py` script, as provided with Kratos. Note that the script must remain bundled with its dependencies. In addition, the `python` variable must point to a python executable (I recommend to use a virtual environment), with packages from [scripts/requirements.txt](./scripts/requirements.txt) installed. The script does not work with the latest versions of Python.

## Basic Usage
`./run.sh <model.smv> [options]`: initialize model and check its specifications.

Options:
- `-v` verbose, show all output when checking properties on timed models

### Naming Conventions
For smv files, the following suffix naming conventions apply:
- `.smv`: untimed model containing only variables of _finite domain_ types.
- `_infinite.smv`: untimed model contaning variables of _infinite domain_.
- `_timed.smv`: timed models.

The conventions are recognized by [./run.sh](./run.sh) to simplify execution of appropriate commands.
