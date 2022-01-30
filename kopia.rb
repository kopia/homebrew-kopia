# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.2/kopia-0.10.2-macOS-x64.tar.gz"
    sha256 "584ef006e8f9f156e4a7d9d1844e2f17db3db9149d192f49547e69db2cf5c4a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.2/kopia-0.10.2-macOS-arm64.tar.gz"
    sha256 "f280f8952d82f8bb513277d58a0da481443b3e9518e872880306b24b0ac3b17e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.2/kopia-0.10.2-linux-x64.tar.gz"
    sha256 "617eb3e34900dccea6347bf9094e69e594613a749a36f1e11520f8d05f2d8dab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.2/kopia-0.10.2-linux-arm.tar.gz"
    sha256 "e62b1b192efacf6a68bbcbd65e0dc819b458654471c1aa8615317c81b2cda4d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.2/kopia-0.10.2-linux-arm64.tar.gz"
    sha256 "b80cd62eb3667e8b63cec403e51858c6a82e979eb697227c4e65becfa799bf15"
  end

  def install
    bin.install "kopia"
  end
end
