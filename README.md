# docxsplit
A Unix Shell Script designed to neatly split a .docx file down into it's base XML and file structure, while still preserving the orignial .docx.

## To Run

Run these following commands in your Terminal:
```zsh
# navigate into your Downloads folder or any directory of your choice
cd Downloads

# download the script using curl
curl https://raw.githubusercontent.com/BitesPotatoBacks/docxsplit/main/docxsplit --output docxsplit

# change file permissions to make it executable
chmod 755 ./docxsplit

# execute the script (or just open it from Finder).
./docxsplit
```

## Execution Options

You can add a path to a directory as an argument for the command. This will force the script to navigate into that specified directory. Please make sure to escape special characters with a backslash, such as spaces.

```zsh
./docxsplit Your/Directory/Name\ Here
```

## Execution Warnings
When prompted to enter your files name, please **DO NOT** prefix your file with a directory path. This will break the script and result in an unsuccesful split. Please use the directory path as an argument to the command, as was stated above.

## Bugs and Issues

If you can't diagnose the problem yourself, feel free to open an Issue. I'll try to figure out what's going on as soon as possible.
