# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.16.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.16.1/kopia-0.16.1-macOS-x64.tar.gz"
    sha256 "2025fa9a26f32756e229146eb21d593172635b40cb39f6d2ae1cd2fab9c14d7d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.16.1/kopia-0.16.1-macOS-arm64.tar.gz"
    sha256 "a10473b9ff253354ff22bcadd64c9b2f3dd35d7012e19471885168117b7bf173"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.16.1/kopia-0.16.1-linux-x64.tar.gz"
    sha256 "7ccb32f810890fa2255401d3144fca40d43f6bf74bbd46ed0946ab6362df0613"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.16.1/kopia-0.16.1-linux-arm.tar.gz"
    sha256 "fdb09acd641b91b425f1edf06e4868ca5031643d3299026ad2617e97b09fd050"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.16.1/kopia-0.16.1-linux-arm64.tar.gz"
    sha256 "b6f14a42a2b0d5e381bd943eeb7b6580961e44de5d1f563e682f81ac7616ac3e"
  end

  def install
    bin.install "kopia"
  end
end
