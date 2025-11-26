# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.22.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.2/kopia-0.22.2-macOS-x64.tar.gz"
    sha256 "e369d72fa0db56e3bd88e41b24564c52eb7a8fea318709ee16d6afe8cfb3f659"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.22.2/kopia-0.22.2-macOS-arm64.tar.gz"
    sha256 "38e31fbb792e247da7f19dae6e221da1f6fa11dc31a0d5b2eb63b02fe3fc10e2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.2/kopia-0.22.2-linux-x64.tar.gz"
    sha256 "b1b69bd422879d8f5cad9d415816bb6821af24ca74ae2a1db3cc9f1d682693c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.2/kopia-0.22.2-linux-arm.tar.gz"
    sha256 "59a85f469c55ba2907da8ef480e5f43d3d14fb7e5867df796d480a39113b81ab"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.2/kopia-0.22.2-linux-arm64.tar.gz"
    sha256 "2f2365a434af163382abe208d5be3c050bf2a4371c417b1f02f117d666e51af6"
  end

  def install
    bin.install "kopia"
  end
end
