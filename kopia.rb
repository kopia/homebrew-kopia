# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.5/kopia-0.9.5-macOS-x64.tar.gz"
    sha256 "0852e3487bd90b11a51fb71039da9d2cb2782dc7cf8726734edaecfb4846e0d6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.5/kopia-0.9.5-macOS-arm64.tar.gz"
    sha256 "a2044e7795a205525be1fab4f5931c6a739d8b4b35986b5d79ae2803f46beda4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.5/kopia-0.9.5-linux-x64.tar.gz"
    sha256 "f5f47e6c9f4574f058b823c33d5403c8a57031e7ed0763c2911ab8d28d7663f3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.5/kopia-0.9.5-linux-arm.tar.gz"
    sha256 "28a524e8302e5d51a843fb3ba4eafd317d65b8e0dadd2f148607895354b78201"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.5/kopia-0.9.5-linux-arm64.tar.gz"
    sha256 "57b3f6315d97e0d515d8a77d6aa3b24a6c2fa44e6398b98eceff1a813e4d78fb"
  end

  def install
    bin.install "kopia"
  end
end
