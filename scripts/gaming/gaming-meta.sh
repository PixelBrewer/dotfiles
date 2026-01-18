#!/bin/bash
# omarchy-gaming-setup.sh

sudo pacman -S --needed \
  alsa-plugins lib32-alsa-plugins \
  giflib lib32-giflib \
  glfw \
  gst-plugins-base-libs lib32-gst-plugins-base-libs \
  lib32-gtk3 \
  libjpeg-turbo lib32-libjpeg-turbo \
  libva lib32-libva \
  libxslt \
  mpg123 lib32-mpg123 \
  opencl-icd-loader lib32-opencl-icd-loader lib32-ocl-icd \
  openal lib32-openal \
  vulkan-tools \
  wine winetricks protontricks \
  ttf-liberation

echo "Gaming libraries installed. Restart Steam and try Hell Let Loose."
