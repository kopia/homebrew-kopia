# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.13.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-macOS-x64.tar.gz"
    sha256 "85951085c848131553e60a0a4d5090bbcc33fa1770a6eec58ff2ac0340c0da0a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-macOS-arm64.tar.gz"
    sha256 "1ecbc157aff10ca7e02c8fa118c32218384f7e3ee76fe1a4b4785d5f00c28f58"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-linux-x64.tar.gz"
    sha256 "2f2ace672b2423929d618f14c7323d64e756087689a420529324c343605baeb1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-linux-arm.tar.gz"
    sha256 "e8e0dabb9ee7c54c8ed46c980ef85a71bd4d0bb52c149d4b6d0943d9f93fb1f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-linux-arm64.tar.gz"
    sha256 "ae0d67ddc4e40d84ce7eb94fdd2be989ddce75950f0f62e84ddcda8a92e08672"
  end

  def install
    bin.install "kopia"
  end
end
