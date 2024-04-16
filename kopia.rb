# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.17.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.17.0/kopia-0.17.0-macOS-x64.tar.gz"
    sha256 "8f0c41835b70a1c529cb6e946193785b10df1da09c5bfe3cc96a3007226b04d6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.17.0/kopia-0.17.0-macOS-arm64.tar.gz"
    sha256 "e81b2b7a91501b7d4f834daaec78c11f910ed1a8f50ba46ba4c9725c87787c9e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.17.0/kopia-0.17.0-linux-x64.tar.gz"
    sha256 "6851bba9f49c2ca2cabc5bec85a813149a180472d1e338fad42a8285dad047ee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.17.0/kopia-0.17.0-linux-arm.tar.gz"
    sha256 "25804d7271a0dfe6d0821270c5640caa01da5e05a03a7c4783fd1edafb234d51"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.17.0/kopia-0.17.0-linux-arm64.tar.gz"
    sha256 "9679415cd2717a90cb6a793aa2d4accde4059084245b27fa4807d7e13fbe40a0"
  end

  def install
    bin.install "kopia"
  end
end
