# smi2srt
![jungin500/axfree-smi2srt](https://img.shields.io/docker/image-size/jungin500/axfree-smi2srt?label=jungin500%2Faxfree-smi2srt)  
  
Convert subtitles in ".smi" or ".ass" format to ".srt" format.  
Docker multiarch build of [axfree/smi2srt](https://github.com/axfree/smi2srt)

## Docker Image
- Docker Image: [jungin500/axfree-smi2srt](https://hub.docker.com/r/jungin500/axfree-smi2srt)
- Supports architecture (in terms of favor NASes):
  - `amd64` Intel/AMD 64bit
  - `arm64` ARM 64bit
  - `armv7l`: ARM 32bit

### Quick usage
- Converts all `.smi` files of current directory into `.srt`  
- Preserves original `.smi` files (put `-x` on tail to remove original files)
```
docker run -it -v "$(pwd)":"$(pwd)" --rm jungin500/axfree-smi2srt "$(pwd)"
```


## Prerequisits
- [Node.js](https://nodejs.org)

## Installation
<pre>
$ sudo npm install -g smi2srt
</pre>

## Command Line Usage
<pre>
Usage: smi2srt [options] &lt;file&gt;

smi2srt by axfree

Options:


  -h, --help                          output usage information
  -v, --version                       output the version number
  -n                                  do not overwrite an existing file
  -d, --output-directory &lt;directory&gt;  specify optional output directory
  -l, --list-subtitles                list subtitles
  -t, --time-offset &lt;offset&gt;          specify the time offset in miliseconds
  -b, --time-begin &lt;time&gt;             specify the time begin for offset in miliseconds or H:mm:ss
  -x, --remove-original-file          remove original file after successful conversion
  -i, --install-automator             install smi2srt OS X Automator
</pre>

## License
MIT
