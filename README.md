# hello-fmt: Example C++ Project Packaged with Conda

This project demonstrates how to package and distribute a simple C++ program using the [`fmt`](https://github.com/fmtlib/fmt) library with Conda.  
These instructions work for **Ubuntu, WSL, or any Linux system**.

---

## Prerequisites

- [Git](https://git-scm.com/) installed.
- [Miniconda](https://docs.conda.io/en/latest/miniconda.html) or [Anaconda](https://www.anaconda.com/) (see below for installation).
- (Optional) Windows: Install in a Conda Prompt or from WSL.

---

## 1. Install Miniconda (if you don't have Conda)

**Copy-paste into your Ubuntu/WSL terminal:**

```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
# Accept prompts, use default path (recommended).
# When asked, let installer run 'conda init' for you.
# After install, open a new terminal or run:
source ~/miniconda3/etc/profile.d/conda.sh
```

## 2. Clone the repository

```sh
git clone https://github.com/AvajWiktor/conda-example.git
cd conda-example
```

## 3. Install Required Conda Modules

You need conda-build:

```sh
conda install -y conda-build
```

## 4. Build the Conda Package

From the root project directory (where recipe/ is):

```sh
conda build recipe
```

This will compile your C++ code and produce a .conda file in your env folder

Also in output will be present full path to .conda file

## 5. Install Your Local Package

```sh
conda install --use-local hello-fmt
```

or you can use directly path from previous step if command above can't find your pkg

```sh
conda install --use-local <path>
```

## 6. Test Your Program

Activate the environment (if needed):

```sh
conda activate <your-env>
```

Run the program (should print "Hello, Conda World"):

```sh
hello_fmt
```

## 7. Build/Test in a Clean Environment

Test that your package works as a dependency in a fresh environment:

```sh
conda create -n hello-test --use-local hello-fmt
conda activate hello-test
hello_fmt
```

## 8. Cleaning Up

To remove the test environment:

```sh
conda deactivate
conda remove -n hello-test --all
```
