# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0/kopia-0.9.0-macOS-x64.tar.gz"
    sha256 "ccaf51fb04e2bc2c5f61ae05a530e547c34261917e9cb751cdab94284d5b8686"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0/kopia-0.9.0-macOS-arm64.tar.gz"
    sha256 "af41ff5047afedb9d2f16a58a6379b7cae6643a5d3800705bfb432105d528328"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0/kopia-0.9.0-linux-x64.tar.gz"
    sha256 "fc30841363200b3682b253cbf76b280ad072bfe7b6901febb7f78b743eedb576"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0/kopia-0.9.0-linux-arm.tar.gz"
    sha256 "48d0b2389b5aee3eb795fecda6bbdd1d4c2c7cd398bcb6254a861ca70f6c4697"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0/kopia-0.9.0-linux-arm64.tar.gz"
    sha256 "a3c4b64dc0c3788b61c3a8835c76fcbe80e29a659c39eadaf3c325046a15a2f5"
  end

  def install
    bin.install "kopia"
  end
end
