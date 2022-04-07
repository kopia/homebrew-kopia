# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.7/kopia-0.10.7-macOS-x64.tar.gz"
    sha256 "05d7b1e6c8b12b0165d927b3f5d245e65a3200160e1f0517eec3027715b64401"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.7/kopia-0.10.7-macOS-arm64.tar.gz"
    sha256 "58afa1acfb10548c599f990fc984cd25e2a602f3dbdd7dec50a990f08f21035d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.7/kopia-0.10.7-linux-x64.tar.gz"
    sha256 "6a0a6a67e290e383ec789ea4a4bb3c6320b0851942498983d941b49594adc27b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.7/kopia-0.10.7-linux-arm.tar.gz"
    sha256 "c1c7e78d188e4799d3bb8ded8d02f2aaf246e7a4b4f5bd03aff71946aec26edf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.7/kopia-0.10.7-linux-arm64.tar.gz"
    sha256 "2325e299395e97c4485d5c1af28c10cf5e3bfbb6985eaa371a804a6928e1d7cc"
  end

  def install
    bin.install "kopia"
  end
end
