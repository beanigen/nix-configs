{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ libusbmuxd usbmuxd ifuse gvfs libimobiledevice libusb libgpod libplist libimobiledevice-glue ];
  }
