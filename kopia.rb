# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.3.0-rc6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/v0.3.0-rc6/kopia-0.3.0-rc6-macOS-x64.tar.gz"
    sha256 "7a770891a259abdbab19e4967a5cc400bcf3861711cb8150dbcbcdd5c7b8cecd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/v0.3.0-rc6/kopia-0.3.0-rc6-linux-x64.tar.gz"
      sha256 "6f31a5784982a1738f228d7591977c94de642af3f24dc4fe921122e76e529058"
    end
  end

  def install
    bin.install "kopia"
  end
end
