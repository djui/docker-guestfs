# libguestfs-tools Docker image

A Docker image that allows to use [libguestfs-tools](http://libguestfs.org)
for accessing and modifying virtual machine disk images mounted as volumes.


## Build

    $ docker build -t guestfs .

Or fetch:

    $ docker pull djui/guestfs


## Usage

    $ docker run --rm -it -v my_image.vmdk:/my_image.vmdk guestfs --ro -i -a /my_image.vmdk

    Welcome to guestfish, the guest filesystem shell for
    editing virtual machine filesystems and disk images.

    Type: 'help' for help on commands
    'man' to read the manual
    'quit' to quit the shell

    /dev/sda1 mounted on /
