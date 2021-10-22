# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.4/kopia-0.9.4-macOS-x64.tar.gz"
    sha256 "aefdd5dbec3fe3e2a89ac2cbf6b5363cc09b341160cc2a831c4f7db26db61d97"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.4/kopia-0.9.4-macOS-arm64.tar.gz"
    sha256 "7016723b9c85ad10f6e82a309b86284a2a85195fb1f754dd31cdc82995907e7f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.4/kopia-0.9.4-linux-x64.tar.gz"
    sha256 "4f7abf4c7e0ba0999df11623f15ad7d6a2098b8898e8f40e7b1fc31ca91fc106"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.4/kopia-0.9.4-linux-arm.tar.gz"
    sha256 "d1b9283cb553211657f09268a4ecc514d261afed89f0c5b2f2ed2ed77087d997"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.4/kopia-0.9.4-linux-arm64.tar.gz"
    sha256 "5a9aad30a18fe7f0b24863883feb8ed7eead78d362d41b5e89528e965faef92f"
  end

  def install
    bin.install "kopia"
  end
end
