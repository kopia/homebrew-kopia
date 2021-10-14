# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.1/kopia-0.9.1-macOS-x64.tar.gz"
    sha256 "196a1e3df1ed6f9c1894c78062e014968d1778ccb4e09a6ddc4f85e235ca549d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.1/kopia-0.9.1-macOS-arm64.tar.gz"
    sha256 "1334f639975896407e96517ba38c842a9b169cac54c35cd51f39dc735173e694"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.1/kopia-0.9.1-linux-x64.tar.gz"
    sha256 "da1da17873f2fdd3dde4e8055d55f581c7df6f7d0e209302cea200f9fcb5377f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.1/kopia-0.9.1-linux-arm.tar.gz"
    sha256 "54abbf2a37242adaa9988f5b8b6c8ebd10c0eedd25efd89c1f0be68282e0bdf8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.1/kopia-0.9.1-linux-arm64.tar.gz"
    sha256 "6e08b470b286d222e661abe5747958e4437a9313cd2b7f136da71796542eddeb"
  end

  def install
    bin.install "kopia"
  end
end
