## Intr
* 两个目录下包括最底层子目录的同名文件替换
* 有两个参数，第一个是源目录地址，第二个是目的地地址
* 地址为绝对地址
## Use
* sh replacefile.sh [source] [dest]
## Eg
    >replacefile git:(master) ✗ sh replacefile.sh ~/Desktop/shell/replacefile ~/Desktop/shell/copyfans 
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/d/testhtml6.sh -> /Users/gl-wjt/Desktop/shell/copyfans/r/testhtml6.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/d/testhtml7.sh -> /Users/gl-wjt/Desktop/shell/copyfans/r/testhtml7.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/replacefile.sh -> /Users/gl-wjt/Desktop/shell/copyfans/replacefile.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/testhtml.sh -> /Users/gl-wjt/Desktop/shell/copyfans/testhtml.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/testhtml2.sh -> /Users/gl-wjt/Desktop/shell/copyfans/testhtml2.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/testhtml3.sh -> /Users/gl-wjt/Desktop/shell/copyfans/testhtml3.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/testhtml4.sh -> /Users/gl-wjt/Desktop/shell/copyfans/testhtml4.sh (y/n)y
    >COPY: /Users/gl-wjt/Desktop/shell/replacefile/testhtml5.sh -> /Users/gl-wjt/Desktop/shell/copyfans/testhtml5.sh (y/n)y
    >copy file number is 8
