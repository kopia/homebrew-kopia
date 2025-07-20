# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.21.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.21.0/kopia-0.21.0-macOS-x64.tar.gz"
    sha256 "c7966dd8b4d7b0a8477d1b465c1c463c73cd25876f3f3d798fb68394183f581c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.21.0/kopia-0.21.0-macOS-arm64.tar.gz"
    sha256 "3ad7c1bd2aecced90c54b4f08f7915898dcfbbf8058f44580b9b09d47c36934b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.21.0/kopia-0.21.0-linux-x64.tar.gz"
    sha256 "cf54432bb958f989e2f0ccba055682ab5a2f888231692216b6caf100d675f99a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.21.0/kopia-0.21.0-linux-arm.tar.gz"
    sha256 "969e37b2499730d2433d44552175f779f534e1cfbd7a105daff26d1653b415af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.21.0/kopia-0.21.0-linux-arm64.tar.gz"
    sha256 "e55801fe60d06e0aa5398a2ad7e3de625c32ae2de3bfb84f57636ab6cfca5c49"
  end

  def install
    bin.install "kopia"
  end
end
