# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/0.5.0/kopia-0.5.0-macOS-x64.tar.gz"
    sha256 "a27273852396cbf87c9358d1e0b3be0036d49c1b5fefea822566fea4c1a01a43"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/0.5.0/kopia-0.5.0-linux-x64.tar.gz"
      sha256 "1bf7c82634178e46018f834236ea08fca2dd2c3f12139ffd3bdc35eb36716f1b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/0.5.0/kopia-0.5.0-linux-arm64.tar.gz"
        sha256 "80b426eb2f9a9fe655f1005a4c173ff4651c479ae96a06c3cbc39e005fd4ffc8"
      else
        url "https://github.com/kopia/kopia/releases/download/0.5.0/kopia-0.5.0-linux-arm.tar.gz"
        sha256 "7a6cfc759d1927b9bc424526009493802a88d7e2b8d6a8098f0d9e0d5be68e4a"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end
