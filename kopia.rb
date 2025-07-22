# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.21.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.21.1/kopia-0.21.1-macOS-x64.tar.gz"
    sha256 "7b8b30716487a15e6b4ce2dcb6ade82f7e6839e9f53915d79fdfc5b9dd4362a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.21.1/kopia-0.21.1-macOS-arm64.tar.gz"
    sha256 "adbe930e4b3e4c939528a1a42d58d1addcf5c2775f84320cadaf07f9d1960bed"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.21.1/kopia-0.21.1-linux-x64.tar.gz"
    sha256 "de47d6b8ae2dfd6199a81d428c9eaed58cfd96a167bdc20407d3264dd18d33ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.21.1/kopia-0.21.1-linux-arm.tar.gz"
    sha256 "1545d8fcbfcf2929f5509d3f7ba752795314feeafdc4274e2acf65229642061f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.21.1/kopia-0.21.1-linux-arm64.tar.gz"
    sha256 "11fad6d30b1e9c264d4a30a886212fcef59a2d174a349a041ee6b24312004b23"
  end

  def install
    bin.install "kopia"
  end
end
