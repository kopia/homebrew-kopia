# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.16.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.16.0/kopia-0.16.0-macOS-x64.tar.gz"
    sha256 "f8ac2fb088cbc0ea652dd8b240bd9f76a0e80b0fd9ad8f2ac1cf15bd2ee0830e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.16.0/kopia-0.16.0-macOS-arm64.tar.gz"
    sha256 "7629cf16b242247d146cc5b817dd95f4bdc719c1e4ac6795157b5c02fb68fc34"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.16.0/kopia-0.16.0-linux-x64.tar.gz"
    sha256 "a29f2cc1a49f985d1bfe09340eda0f7ed7b3c98037704da249b47034f1be1a18"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.16.0/kopia-0.16.0-linux-arm.tar.gz"
    sha256 "07dfa3fb9884ffd620239c736eb4f70f99b54594e20de69ae7a7850088af5ddf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.16.0/kopia-0.16.0-linux-arm64.tar.gz"
    sha256 "dc20b1d50d0d6e6d0e429f4f6062088f188100f3c9dab6d868d232169ab413a8"
  end

  def install
    bin.install "kopia"
  end
end
