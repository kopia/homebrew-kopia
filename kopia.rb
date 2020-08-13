# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.6.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/v0.6.1/kopia-0.6.1-macOS-x64.tar.gz"
    sha256 "ea2d489496f7534bdf618e88c7cc6ac068417f40305989cb10558bdb7e1cd19e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/v0.6.1/kopia-0.6.1-linux-x64.tar.gz"
      sha256 "e07c5974f6abced76ccb0a912b9a8c928c83340a088f1d0343357f8e6fc64e35"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/v0.6.1/kopia-0.6.1-linux-arm64.tar.gz"
        sha256 "d46fb46753b0271b8431fbaba7245c29d2fbbc26f254b91d3e20532d38f9b0dd"
      else
        url "https://github.com/kopia/kopia/releases/download/v0.6.1/kopia-0.6.1-linux-arm.tar.gz"
        sha256 "467fd9c2e9c0d3cc261aae56fada7bbb6567ef385f2d978cfc9bf27592901ec6"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end
