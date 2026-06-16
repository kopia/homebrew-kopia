# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.23.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.23.1/kopia-0.23.1-macOS-x64.tar.gz"
    sha256 "89dd7160a1266413c73bd0aa92459c5e739fcaed2ba30a4cca30aef179f11042"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.23.1/kopia-0.23.1-macOS-arm64.tar.gz"
    sha256 "19e6ed637221f4dfd46a46e978ec4c509c386b522d746db2cd6762b217478111"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.23.1/kopia-0.23.1-linux-x64.tar.gz"
    sha256 "416d0f84a3dbb321a8b2d8f0997b1a0a6e915babe79ee76fa6e4d2bd1e1c5178"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.23.1/kopia-0.23.1-linux-arm.tar.gz"
    sha256 "3e0d7fa496941204ae3ff4da52eb2688aff05b43549297109b914b072394ec91"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.23.1/kopia-0.23.1-linux-arm64.tar.gz"
    sha256 "a4ffbc019e0b0f932e2632054e73ec521dc1e80172a00095369c53ecf4e5a6cb"
  end

  def install
    bin.install "kopia"
  end
end
