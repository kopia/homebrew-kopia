# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.4/kopia-0.10.4-macOS-x64.tar.gz"
    sha256 "87bcdfe825a1fc08249f87a3a2c6886410dfde85f2ae368451d291cd62343f13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.4/kopia-0.10.4-macOS-arm64.tar.gz"
    sha256 "b5ebec3fdb84143de4d14817eb79f6ef408dcebd679253396d521cdb28b5227c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.4/kopia-0.10.4-linux-x64.tar.gz"
    sha256 "e7f7289c68512f424ed6836ccbbd549206f86d4fd7b26d916cdc7604a4e4a691"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.4/kopia-0.10.4-linux-arm.tar.gz"
    sha256 "9b5d642c1701a62d4ff4e5242e680f2fd63a9af069b506aa81323ec463c581df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.4/kopia-0.10.4-linux-arm64.tar.gz"
    sha256 "859e61c3c101e94a9c1e5c98b09f2f5d0c4a19db509189d3ae396288e47dfccc"
  end

  def install
    bin.install "kopia"
  end
end
