# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.14.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.14.0/kopia-0.14.0-macOS-x64.tar.gz"
    sha256 "c2f8dd77868f361b20f7f6a9e5366846f0feacd146451d688c0c891a3d81302e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.14.0/kopia-0.14.0-macOS-arm64.tar.gz"
    sha256 "8236d1be0f894072e2b7e541bea770ec83755ec0c6ca3c48317eee158d019ee6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.14.0/kopia-0.14.0-linux-x64.tar.gz"
    sha256 "f7e027be54f0fca131a7b14899b3abea5adb98d37143a672f61014ad907517af"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.14.0/kopia-0.14.0-linux-arm.tar.gz"
    sha256 "9f30ae19c1112d2065d9bdeb9f1d125e637360f9444f1b160ac5e2ffcca0e9da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.14.0/kopia-0.14.0-linux-arm64.tar.gz"
    sha256 "23be113be69007a03350c6aab71c0cf8c9ce9969b11b43002aa7a60092ccf234"
  end

  def install
    bin.install "kopia"
  end
end
