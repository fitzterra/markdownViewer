This is a Python Virtual environment for running a live markdown previewer.

It has `grip` (https://github.com/joeyespo/grip) installed which runs a web
server, monitoring a markdown file being edited in a external editor, and
updates live as the file changes, auto converting from markdown to HTML.

To set up:
1. Create the `markdownViewer` directory and change to it
2. Set up the virtual environment:

  `$ virtualenv venv`

    - NOTE: on Debian Jessie system with no other python than python3 installed,
      you will have to add the `--python=python3` option to virtualenv.

3. Source the `activate` environment from the the `venv/bin` dir:

  `$ source venv/bin/activate`

4. Install grip:

  `$ pip install grip`


To start:
1. Source the `activate` environment from the the `venv/bin` dir:

  `$ source venv/bin/activate`

2. With the virtual environement active, try `grip --help`
3. To view a markdown file in any directory, change to that directory then run:

  `$ grip -v anyfile.md`

Check the github page or `grip --help` for more.

Alternative start:
1. Symlink the `markdownViewer.sh` to somewhere in your PATH - I have a `~/bin/`
dir in my home which is in my PATH, so I symlink it to there. This **must** be a
symlink, and not a copy of the script!
2. Run `markdownViewer.sh` from within any directory you you need, and pass any
`grip` arguments directly to `markdownViewer.sh`
NOTE: This assumes the virtual environment is in a directory called `venv` 

