# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.18.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.18.2/kopia-0.18.2-macOS-x64.tar.gz"
    sha256 "333288e5f9f361c86eafa6ccf420b4a2bc48ef578842e044fa588106d00a74c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.18.2/kopia-0.18.2-macOS-arm64.tar.gz"
    sha256 "d24c6e88187b43eef33837c5e2f37b41568100ccbd1c91ae0452e6c5b255787b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.18.2/kopia-0.18.2-linux-x64.tar.gz"
    sha256 "8d9d5820bde6e54b68edab31833628293ba6d58dac39318382357eef33e1129d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.18.2/kopia-0.18.2-linux-arm.tar.gz"
    sha256 "42f24fdc001f5e2112b2fcea00b2a68324899e9024e6d8faf8d356a4c306a469"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.18.2/kopia-0.18.2-linux-arm64.tar.gz"
    sha256 "71ab00568ebb5c7dcb11b5fa5bcd460e04fe5bfed9b698c65b3e78fd195fe369"
  end

  def install
    bin.install "kopia"
  end
end
