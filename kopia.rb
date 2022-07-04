# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.11.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.0/kopia-0.11.0-macOS-x64.tar.gz"
    sha256 "0f5653873cafb4e5c978ff986c8753da627fc898e9d4a2f0a8b5c4fcd21b8882"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.11.0/kopia-0.11.0-macOS-arm64.tar.gz"
    sha256 "27b0757ca7de31eaf1eafd26ed13742fe02d6be20bac3293e72d3c3f54c7934f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.0/kopia-0.11.0-linux-x64.tar.gz"
    sha256 "2a6bbd3f27b7d14178a9ea8f9176d568f07f0ed91ae4911a3d81b78b2c2d8317"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.0/kopia-0.11.0-linux-arm.tar.gz"
    sha256 "f18be42903680974e41ced1cec76c55b42b47abf734f0b4fd65e5a3e658e1f28"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.0/kopia-0.11.0-linux-arm64.tar.gz"
    sha256 "0b75a790d271181e1b79697a5a650b45f97840447e58008d9280eca23c25712d"
  end

  def install
    bin.install "kopia"
  end
end
