# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.8.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.2/kopia-0.8.2-macOS-x64.tar.gz"
    sha256 "70f29befeeba2afc234cd277efc097bcdebcae9cefb86c851c64a54781b83bb8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.8.2/kopia-0.8.2-macOS-arm64.tar.gz"
    sha256 "ba01c91c77f1cb90eef9888aeba3b847231709489310a82fbaeac758a0ef1320"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.2/kopia-0.8.2-linux-x64.tar.gz"
    sha256 "a0dbcf6134b003a1ae3085f46464967517cdb7580fcdcf8f1715f99b7ea67057"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.2/kopia-0.8.2-linux-arm.tar.gz"
    sha256 "3722eeb0d7842e41ebf9d4fa6debaa7e07eec8dfb192e32a9b505294cdccd3d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.2/kopia-0.8.2-linux-arm64.tar.gz"
    sha256 "34b94baebe87d12bd32a9b851dafc36d28b1e3106f7a98ba1116fdbcc5a731fa"
  end

  def install
    bin.install "kopia"
  end
end
