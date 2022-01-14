# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.0/kopia-0.10.0-macOS-x64.tar.gz"
    sha256 "5e869a88dd54d61d848049ca12b86ccfd08202179a4221e7b9a5428b98889765"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.0/kopia-0.10.0-macOS-arm64.tar.gz"
    sha256 "9b4717eac1651ecedb10dd910a9149bfc3fca7004fa4902b3283770c48642e53"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.0/kopia-0.10.0-linux-x64.tar.gz"
    sha256 "5e3dfbf72f4aca17523552b3fb8bc2858718d22a66b74a6a22de2e654f1e5c6d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.0/kopia-0.10.0-linux-arm.tar.gz"
    sha256 "afb5d1a3a0d7fd40be2eb0cd5073ccf4e50569cfedc5c9b2855fd65418f0e7a7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.0/kopia-0.10.0-linux-arm64.tar.gz"
    sha256 "65cc4432579229c1931e8f07c79cfc1c52105926d06a2c4f241c2ad4a76a7a38"
  end

  def install
    bin.install "kopia"
  end
end
