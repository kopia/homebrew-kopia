# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.20.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.20.0/kopia-0.20.0-macOS-x64.tar.gz"
    sha256 "daffcffdef8ca5f95ee4c3b186f133a03d92cb28e4e08399c262bc937c4f2a2a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.20.0/kopia-0.20.0-macOS-arm64.tar.gz"
    sha256 "f652592d0e7210c719e7b583515c9d59645b2c11ce0b8011ad2411d4c390c266"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.20.0/kopia-0.20.0-linux-x64.tar.gz"
    sha256 "a7ecfa043b3065573bb9e5551952bebde54c68d2c30ecc51f4711f8c255d119e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.20.0/kopia-0.20.0-linux-arm.tar.gz"
    sha256 "62cef442c053e28894203a57b3815c979311717ce9fd16819806ff31fb50bfa4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.20.0/kopia-0.20.0-linux-arm64.tar.gz"
    sha256 "2f9826ce27eaf40bb70ac32189b503a017cc7c07f614d11cdfbf5c0e04171432"
  end

  def install
    bin.install "kopia"
  end
end
