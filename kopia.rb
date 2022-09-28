# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.12.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0/kopia-0.12.0-macOS-x64.tar.gz"
    sha256 "a72b2807f6820fb3cffc18a26c0e30486d4273a9640eecee0776f4309fecc9ab"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0/kopia-0.12.0-macOS-arm64.tar.gz"
    sha256 "9c672bc5b11dd67d1b8bac306082c664a98109a84798714c4ad706efc8bf6569"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0/kopia-0.12.0-linux-x64.tar.gz"
    sha256 "6037faf0f4b1108877d4bd487a3c2b7805ed7ea5bbb494f54caa20918c3c42e6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0/kopia-0.12.0-linux-arm.tar.gz"
    sha256 "584005346f60b341c236a7dc9b51157c8e3dccb6c9dfafecec1ab0352686edc2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0/kopia-0.12.0-linux-arm64.tar.gz"
    sha256 "5bbd171943116a34c499700114e21da1d64d546a24ca9f5111a66b13926fae47"
  end

  def install
    bin.install "kopia"
  end
end
