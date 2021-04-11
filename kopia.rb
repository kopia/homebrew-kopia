# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.8.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.1/kopia-0.8.1-macOS-x64.tar.gz"
    sha256 "ecfc677c1beb22d6ae959c5eb0f843411b77073911957fd831e54b6e8f273ef0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.8.1/kopia-0.8.1-macOS-arm64.tar.gz"
    sha256 "978757f7ab791b26bc19dae90f7019d53a2fc983d0d318a2d877d503e384e91a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.8.1/kopia-0.8.1-linux-x64.tar.gz"
    sha256 "54d06c740e6f5fadfb77be23e8ea43607913df0b6dc64a81339affe538f6e200"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.1/kopia-0.8.1-linux-arm.tar.gz"
    sha256 "eab5517979b4d6aa5550589ced18bcf18d846393e97b0793a0f89688521624b7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.8.1/kopia-0.8.1-linux-arm64.tar.gz"
    sha256 "afb47310c9019d7d0709b7b3bc28a9aafd5598b006f05a73747f65ae587c6745"
  end

  def install
    bin.install "kopia"
  end
end
