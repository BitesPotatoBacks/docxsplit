<h1 align="center" style="">docxsplit</h1>

<p align="center">
    A Unix Shell Script made to neatly split a .docx file into it's base XML and folder structure.
</p>
<p align="center">
    <a href="https://github.com/BitesPotatoBacks/docxsplit/releases">
        <img alt="Releases" src="https://img.shields.io/github/release/BitesPotatoBacks/docxsplit.svg"/>
    </a>
    <a href="https://github.com/BitesPotatoBacks/docxsplit/blob/main/LICENSE">
        <img alt="License" src="https://img.shields.io/github/license/BitesPotatoBacks/docxsplit.svg"/>
    </a>
    <!-- <a href="https://github.com/BitesPotatoBacks/osx-cpufreq/stargazers"><img alt="Stars" src="https://img.shields.io/github/stars/BitesPotatoBacks/osx-cpufreq.svg"/></a>-->
    <br>
</p>

## Preparation 
Download the precompiled binary from the [releases](https://github.com/BitesPotatoBacks/docxsplit/releases) and run these commands to fix the binary permissions:
```
chmod 755 ./docxsplit
```
<!-- If you want to be able to execute docxsplit from any directory, put the binary in your `usr/local/bin`:
```
sudo cp ./docxsplit /usr/local/bin
``` -->
## Usage
```
docxsplit
```

To navigate into another directory, you can add the directory path as an argument.

```zsh
./docxsplit Your/Directory/Name\ Here
```

## Execution Warnings
When prompted to enter your files name, please **DO NOT** prefix your file with a directory path. This will break the script and result in an unsuccesful split. Please use the directory path as an argument to the command, as was stated above.

## Bugs and Issues

If you can't diagnose the problem yourself, feel free to open an Issue. I'll try to figure out what's going on as soon as possible.
