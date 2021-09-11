# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.0-rc1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc1/kopia-0.9.0-rc1-macOS-x64.tar.gz"
    sha256 "b21de4bbc2f741add62ba5c8fe260bf948bffd77a9f0030801f8609e687b2d83"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc1/kopia-0.9.0-rc1-macOS-arm64.tar.gz"
    sha256 "ba9a9a9dbe810dd6ad84968b480a5f33d3b83838ec1532502213b25cb80d8902"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc1/kopia-0.9.0-rc1-linux-x64.tar.gz"
    sha256 "be3b3a79dd4aea9eaba7bfaa58af79af51fe74c26000203892d4c310abc7528d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc1/kopia-0.9.0-rc1-linux-arm.tar.gz"
    sha256 "4776939cd7ca9aa7909a937a586163c60cd8b11b6286a1005acd502faba0b59d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc1/kopia-0.9.0-rc1-linux-arm64.tar.gz"
    sha256 "d22dc18144ec5d38405fb6c71ab3af4fcadb59df1e02e476bd13779235dc26ae"
  end

  def install
    bin.install "kopia"
  end
end
