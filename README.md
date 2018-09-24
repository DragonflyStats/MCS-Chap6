# R Interface to Python

The reticulate package provides a comprehensive set of tools for interoperability between Python and R. The package includes facilities for:

### reticulated python

* Calling Python from R in a variety of ways including R Markdown, sourcing Python scripts, importing Python modules, and using Python interactively within an R session.

* Translation between R and Python objects (for example, between R and Pandas data frames, or between R matrices and NumPy arrays).

* Flexible binding to different versions of Python including virtual environments and Conda environments.

Reticulate embeds a Python session within your R session, enabling seamless, high-performance interoperability. If you are an R developer that uses Python for some of your work or a member of data science team that uses both languages, reticulate can dramatically streamline your workflow!

## Getting started

### Installation

Install the reticulate package from CRAN as follows:
```{r}
install.packages("reticulate")
```

## Python version

By default, reticulate uses the version of Python found on your PATH (i.e. Sys.which("python")).

The use_python() function enables you to specify an alternate version, for example:
```{r}
library(reticulate)
use_python("/usr/local/bin/python")
```
The use_virtualenv() and use_condaenv() functions enable you to specify versions of Python in virtual or Conda environments, for example:
```{r}
library(reticulate)
use_virtualenv("myenv")
```
See the article on Python Version Configuration for additional details.

## Python packages

You can install any required Python packages using standard shell tools like pip and conda. Alternately, reticulate includes a set of functions for managing and installing packages within virtualenvs and Conda environments. See the article on Installing Python Packages for additional details.
Calling Python

There are a variety of ways to integrate Python code into your R projects:

* Python in R Markdown — A new Python language engine for R Markdown that supports bi-directional communication between R and Python (R chunks can access Python objects and vice-versa).

* Importing Python modules — The import() function enables you to import any Python module and call it’s functions directly from R.

* Sourcing Python scripts — The source_python() function enables you to source a Python script the same way you would source() an R script (Python functions and objects defined within the script become directly available to the R session).

* Python REPL — The repl_python() function creates an interactive Python console within R. Objects you create within Python are available to your R session (and vice-versa).

Each of these techniques is explained in more detail below.
