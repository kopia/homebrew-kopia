# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.8.0-beta3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.0-beta3/kopia-0.8.0-beta3-macOS-x64.tar.gz"
    sha256 "b11e2d41b9ee0ead925b1decbde8015ac3d1672a927682cc0ba46897ebc19915"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.8.0-beta3/kopia-0.8.0-beta3-macOS-arm64.tar.gz"
    sha256 "c7529d0aa3d42d6d2375cd3a4ea6780dbe905a8f34fd0971434bcb970e5ea367"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.0-beta3/kopia-0.8.0-beta3-linux-x64.tar.gz"
    sha256 "d0389894e3c6b89146ca31b1fc0b85210be34d322991d44cde35af53aa7e0c9a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.0-beta3/kopia-0.8.0-beta3-linux-arm.tar.gz"
    sha256 "a31d392d65f8c4ebcfd7ac3153eb30bf6b3a74e41bc732599b83a0bf2696a638"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.0-beta3/kopia-0.8.0-beta3-linux-arm64.tar.gz"
    sha256 "e5c7933a3927ef72953b6284b992a39c52921c132e041e2ae71bcfe63b3c7bf8"
  end

  def install
    bin.install "kopia"
  end
end
