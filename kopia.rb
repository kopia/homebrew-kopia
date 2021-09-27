# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.0-rc3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc3/kopia-0.9.0-rc3-macOS-x64.tar.gz"
    sha256 "e2935b70b22c0c67f0442f0aa72caa49df6e68a36d88a6ec26e4e2b479aed573"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc3/kopia-0.9.0-rc3-macOS-arm64.tar.gz"
    sha256 "632d194b0f70791bb63a092de8284434f22c6e00355aa602cac434ce7256b0b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc3/kopia-0.9.0-rc3-linux-x64.tar.gz"
    sha256 "0518062db52423ed6e6461480a80ee85f26d84dec9e0f976611230ccb7b7700a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc3/kopia-0.9.0-rc3-linux-arm.tar.gz"
    sha256 "c1888c2567ad6a32e55800de0c41ff1a32bcc6fb17c9b9f8c43315ef11b086b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc3/kopia-0.9.0-rc3-linux-arm64.tar.gz"
    sha256 "8fa78f6988826decaf2ab440177aa789f084c8cdcad11eac59bdc72144ca3a9e"
  end

  def install
    bin.install "kopia"
  end
end
