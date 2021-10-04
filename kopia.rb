# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.0-rc4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc4/kopia-0.9.0-rc4-macOS-x64.tar.gz"
    sha256 "eefd69c81dcb77c2da00f6540726c606721576c7844a944c9dee0f793f65736c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc4/kopia-0.9.0-rc4-macOS-arm64.tar.gz"
    sha256 "f6bc17575b68124b4b9bc3ec11605209535e9caafe4feab909234e8b64d3cf46"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc4/kopia-0.9.0-rc4-linux-x64.tar.gz"
    sha256 "d09e044b682be8c1ffd2b2d08e77dd66e094907afea6cc42f56d62647044aab7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc4/kopia-0.9.0-rc4-linux-arm.tar.gz"
    sha256 "9ce8171b86619c0d4651f390bd45e5a133940f534b3b1cbc2c575a60f915c28a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc4/kopia-0.9.0-rc4-linux-arm64.tar.gz"
    sha256 "9050baa3b013280ff66dfbe0300d6eec7ddceaa3d2247f1c4e3bc87c7eb6a238"
  end

  def install
    bin.install "kopia"
  end
end
