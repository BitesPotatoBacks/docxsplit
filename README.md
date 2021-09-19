# docxsplit
A Shell Script made for MacOS, designed to neatly split a DOCX file down into it's base XML and file structure, while still preserving the orignial DOCX.

### Hold on...Come again? It does what?
It let's you turn this

![Screen Shot 2021-09-17 at 8 25 23 AM](https://user-images.githubusercontent.com/83843298/133811606-9c8876eb-cbc8-446c-8e17-cfddab27f510.png)

Into all of this

![Screen Shot 2021-09-17 at 8 31 35 AM](https://user-images.githubusercontent.com/83843298/133813171-2493179c-5576-4cc4-9644-de008b5c6089.png)

## To Run

Run these following commands in your Terminal:
```zsh
# navigate into your Downloads folder or any directory of your choice
cd Downloads

# download the script using curl
curl https://raw.githubusercontent.com/BitesPotatoBacks/docxsplit/main/docxsplit.sh --output docxsplit.sh

# modify the files permissions so you can run it
chmod 755 ./docxsplit.sh

# execute the script
./docxsplit.sh
```

## Execution Options

When running, this script will prompt you to input the name of your DOCX file -- But, in doing so, the script will look for that file in _the directory your terminal is currently operating in._ To get split a DOCX file that is located in a different folder, put your folders path (In quotes) at the end of the execution command, like so:

```zsh
./docxsplit.sh "Your/Folder/Path/Here"
```

The script follows the same rules of the ```cd``` command, which means you can navigate into a parent folder like so:

```zsh
./docxsplit.sh "../"
```

And if you forget you can do that, just run:

```zsh
./docxsplit.sh help!
```

and the script will remind you.

## Bugs and Issues

If you can't diagnose the problem yourself, feel free to open an Issue. I'll try to figure out what's going on as soon as possible.
