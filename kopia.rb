# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.3/kopia-0.9.3-macOS-x64.tar.gz"
    sha256 "6902143acde218a7678ee23e802667e1257951d1fb394c09690c75887da85eb9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.3/kopia-0.9.3-macOS-arm64.tar.gz"
    sha256 "232e4f8a5c94e38f4fe821e0d6f58ace1895d565c2e92a92be4760ef4b3d2534"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.3/kopia-0.9.3-linux-x64.tar.gz"
    sha256 "0c23176759504ae0fb390da7b0c0e88b9230099637582d60f2a1066455ed5890"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.3/kopia-0.9.3-linux-arm.tar.gz"
    sha256 "9b866f8113b782d6403eec9cea1a9a7bf3e29cb405cc7a57a95678df0d09393b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.3/kopia-0.9.3-linux-arm64.tar.gz"
    sha256 "106261956109295ea5f47c9430593966f7c9081bcfae775b79a377bec719bbbe"
  end

  def install
    bin.install "kopia"
  end
end
