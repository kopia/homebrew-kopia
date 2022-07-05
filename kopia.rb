# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.11.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.1/kopia-0.11.1-macOS-x64.tar.gz"
    sha256 "cf96f790c02dcbb596f0cd3db4a42667924a240c94e2e24d02f68a42c024ef3b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.11.1/kopia-0.11.1-macOS-arm64.tar.gz"
    sha256 "9d450553e6e42f55609d919351e36e407e782c119ec7f05a9925ffc2910bccb3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.11.1/kopia-0.11.1-linux-x64.tar.gz"
    sha256 "4c08b954f476c852a5d1e74438ae742862de8ed2dd9f13771d94adaab3155159"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.1/kopia-0.11.1-linux-arm.tar.gz"
    sha256 "c71b746659d4908ecb0e5321035b2b3af00dbc8867731b448d9319b0587b43c1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.11.1/kopia-0.11.1-linux-arm64.tar.gz"
    sha256 "cb70a968f6fa2f7699fde5954415fb2ab929994457c09a6d9007349d575308c7"
  end

  def install
    bin.install "kopia"
  end
end
