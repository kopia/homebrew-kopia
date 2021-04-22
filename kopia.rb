# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.8.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.3/kopia-0.8.3-macOS-x64.tar.gz"
    sha256 "4f340eefb499e322ecf0e9eb3f0048a250a14baeff871da9e1ba598765ac9a4f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.8.3/kopia-0.8.3-macOS-arm64.tar.gz"
    sha256 "2a6442762437121ec2d4e41dd5d08ac29a9a81565217c38d32324c9aa8a1a925"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.3/kopia-0.8.3-linux-x64.tar.gz"
    sha256 "94a505392b9364ef346ba4fbfbcd13136fb057853422fab8881e2a0f78aca841"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.3/kopia-0.8.3-linux-arm.tar.gz"
    sha256 "726d85c6a6648c0e5a4f6cf425c105c5690c3314768788f33b4243b0cf5eab7a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.3/kopia-0.8.3-linux-arm64.tar.gz"
    sha256 "4aba992b268f547e665242446bb1d39807c2bf4a2369e189bfeb20c31a5d4acf"
  end

  def install
    bin.install "kopia"
  end
end
