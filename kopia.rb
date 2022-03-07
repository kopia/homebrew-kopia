# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.6/kopia-0.10.6-macOS-x64.tar.gz"
    sha256 "f4be175c32e6843b3d6bed076138a298db8d3392952efeceb753d6b91b387c0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.6/kopia-0.10.6-macOS-arm64.tar.gz"
    sha256 "20ee3954383c86598246ae8070cd72c3219e7291586cbed842a06a525c6e2a86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.6/kopia-0.10.6-linux-x64.tar.gz"
    sha256 "a5f121ed023923166c5a47ee930bec5b278ab77ce6f9476c554d599b701cb12f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.6/kopia-0.10.6-linux-arm.tar.gz"
    sha256 "46fa4a1d373f1a6fba78dc39f687b5ad12a3a983f20b1f00d34bdabb52f4bd5c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.6/kopia-0.10.6-linux-arm64.tar.gz"
    sha256 "b4f5cc24a6d6d9ca1de1cd7a826819dbac345f3da212b4810909c3801f21af82"
  end

  def install
    bin.install "kopia"
  end
end
