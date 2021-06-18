# SandBox for testing Covest

## Pre-requisities
- Python 3.8
- pip

Install PIP
```
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
```

Installing MSSQL ODBC connection requirements for MacOSX
```
brew install unixodbc
brew install freetds
```

Installing MSSQL latest driver
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
brew update
HOMEBREW_NO_ENV_FILTERING=1 ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools
```


## Setting up

Setting locale
  ```
  # Add the following two lines in ~/.bash
  export LC_ALL=en_US.UTF-8
  export LANG=en_US.UTF-8
  ```

Installing virtual environment
  ```
  pip install virtualenv 

  # Run to make sure its been installed
  which virtualenv
  ```

Setting up virtual environment
  ```
  mkdir venv

  # Version Python 2.7 - US this version
  virtualenv --python=/usr/bin/python venv

  # Version Python 3.7.3
  virtualenv --python=/usr/local/bin/python3 venv
  ```

Activating into virtual environment
  ```
  source venv/bin/activate
  ```

Installing requirements into your virtual environment
  ```
  pip install -r requirements.txt
  ```

Updating requirements
when adding any new libraries or packages to this repository always fix the version in the requirements.txt file
  ```
  pip freeze > requirements.txt
  ```

## Running python notebook
  
  ```
  jupyter notebook
  ```