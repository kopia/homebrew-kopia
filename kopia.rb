# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.8.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.4/kopia-0.8.4-macOS-x64.tar.gz"
    sha256 "818e466f8404d9d4805a4b86386d8388e90979b54ffa87f1858890cf13311902"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.8.4/kopia-0.8.4-macOS-arm64.tar.gz"
    sha256 "1b4e2f151ca0db80a7e0ee7b164697af7c6aaeae58f0846952693da327e46af7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.4/kopia-0.8.4-linux-x64.tar.gz"
    sha256 "118e3eece462d6e5bd8e357f6cbb48eabaecc3a22b99c804b54eaba6f6f1b7d5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.4/kopia-0.8.4-linux-arm.tar.gz"
    sha256 "31e9ecd9600dc60f98d4777fb64043b3431ad758dc7ba57d9a7661a103946d6f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.4/kopia-0.8.4-linux-arm64.tar.gz"
    sha256 "3ad81fd7e856ec177b737130710823ef0e64a344be1233d9a7ef456c78e535f2"
  end

  def install
    bin.install "kopia"
  end
end
