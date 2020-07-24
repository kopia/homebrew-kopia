# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.6.0-rc1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/0.6.0-rc1/kopia-0.6.0-rc1-macOS-x64.tar.gz"
    sha256 "b97dfc656fff0778e25dd77b26018bc3f62b65ebf1ecfbd76cd9eef20ef14fe2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/0.6.0-rc1/kopia-0.6.0-rc1-linux-x64.tar.gz"
      sha256 "cab717dcb8928f5531b54a6ced62e75a602a846d23dc9b79dc5e346c132b3f5c"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/0.6.0-rc1/kopia-0.6.0-rc1-linux-arm64.tar.gz"
        sha256 "0371c1a811c44a1438b09f9a9bbd8cda0bbc9ad0e7c6236dadf4cc0f9b20bd4c"
      else
        url "https://github.com/kopia/kopia/releases/download/0.6.0-rc1/kopia-0.6.0-rc1-linux-arm.tar.gz"
        sha256 "68968e6fa3237e0744a0d9842b8038418cb9a26c0d517f079147bf8db5471b52"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end
