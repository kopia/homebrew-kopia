# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.2/kopia-0.9.2-macOS-x64.tar.gz"
    sha256 "2a317b5658ef62cf2622546427cc4dcba78028f74022fbd4e2e4a83533df3604"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.2/kopia-0.9.2-macOS-arm64.tar.gz"
    sha256 "5da8d12758fbef8f910ef62d96d9d1633732db3eddbc79fe0fbd086a6c8f4cb0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.2/kopia-0.9.2-linux-x64.tar.gz"
    sha256 "bfaab55c8d49ae52d65328c8cb79d99d8d1485d98ce4d1245002a71d108efa7b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.2/kopia-0.9.2-linux-arm.tar.gz"
    sha256 "3f30a059770e3a82f6d6aef61667750c4c6b61a23b9db4ebc5538997125a5276"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.2/kopia-0.9.2-linux-arm64.tar.gz"
    sha256 "f17428b84b8196e92538a1471c4d76030d2f2d5296528f0c74259b6f1bb7d683"
  end

  def install
    bin.install "kopia"
  end
end
