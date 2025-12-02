# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.22.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.3/kopia-0.22.3-macOS-x64.tar.gz"
    sha256 "6535d65108f14469a85ec624d39f95a3ff2b95be5705defadfc79161e2f23fe6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.22.3/kopia-0.22.3-macOS-arm64.tar.gz"
    sha256 "75a4b5e3bb58a5914c994418d37cb1e9bcd232a3518f756a2e6d3cf4b99d6997"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.3/kopia-0.22.3-linux-x64.tar.gz"
    sha256 "d9e906e0813fc73addca7caa91c6ee33641e49e4fabe3462cd221445cc790c2d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.3/kopia-0.22.3-linux-arm.tar.gz"
    sha256 "d2ceb5e5e333cf815639d1f2afb98eee38c9bba0e8b4ec169323ceeb1efe088a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.3/kopia-0.22.3-linux-arm64.tar.gz"
    sha256 "7925a64d0a8a121282d7f26e510d500f39d27573bfffbbfd38750b4c807ead3d"
  end

  def install
    bin.install "kopia"
  end
end
