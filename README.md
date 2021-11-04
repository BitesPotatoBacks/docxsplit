# docxsplit
A Unix Shell Script designed to neatly split a DOCX file down into it's base XML and file structure, while still preserving the orignial DOCX.

## To Run

Run these following commands in your Terminal:
```zsh
# navigate into your Downloads folder or any directory of your choice
cd Downloads

# download the script using curl
curl https://raw.githubusercontent.com/BitesPotatoBacks/docxsplit/main/docxsplit --output docxsplit

# you may need to force the file to become an executable
chmod 755 ./docxsplit

# execute the script
./docxsplit
```

## Execution Options

When running, this script will prompt you to input the name of your .docx file -- But, in doing so, the script will look for that file in _the directory your terminal is currently operating in._ To get split a .docx file that is located in a different folder, put your directory path at the end of the execution command, like so:

```zsh
./docxsplit Your/Folder/Path/Here
```

Note: The script follows the same rules of the `cd` command, so make sure to escape in spaces with a `\`.

## Bugs and Issues

If you can't diagnose the problem yourself, feel free to open an Issue. I'll try to figure out what's going on as soon as possible.
