# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.18.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.18.1/kopia-0.18.1-macOS-x64.tar.gz"
    sha256 "88f4547e54f483a6ae52faad1f2b1e6bf847640e0aadb04e3c7bd18f3c7d061d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.18.1/kopia-0.18.1-macOS-arm64.tar.gz"
    sha256 "ff96408502ae13227b6a8782c39e13e4dd7f5b78c41887aa020866545e1d2ecb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.18.1/kopia-0.18.1-linux-x64.tar.gz"
    sha256 "520b344783b8f26354fdddf070b75da52bcd870bec7988c092f2413f7745703c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.18.1/kopia-0.18.1-linux-arm.tar.gz"
    sha256 "70604f30192239b619ed6278ca168473b79d779ffc1cdb25dc70afcc9fceef5b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.18.1/kopia-0.18.1-linux-arm64.tar.gz"
    sha256 "2aec3a01acb8aced6ab0cc21d6f48f2b50f47372f754d9640a3a2040724dcf95"
  end

  def install
    bin.install "kopia"
  end
end
