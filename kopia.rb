# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.13.0-rc2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc2/kopia-0.13.0-rc2-macOS-x64.tar.gz"
    sha256 "ba06eb058142d7f7e63be6180daa28d4320c7cf5fef1b9c710723c5670045916"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc2/kopia-0.13.0-rc2-macOS-arm64.tar.gz"
    sha256 "8939a4f41b28f79d0521538d2407afc9b4604a36863f23d5e8be6886d3048c37"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc2/kopia-0.13.0-rc2-linux-x64.tar.gz"
    sha256 "be9965b8e2539dab040a1c8738f9da97da8fba049c22419739b5d36625895594"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc2/kopia-0.13.0-rc2-linux-arm.tar.gz"
    sha256 "a2b98f73cfed0cb87c43b7b073951368befa044725d00d00d756884897d999d1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc2/kopia-0.13.0-rc2-linux-arm64.tar.gz"
    sha256 "c6b7f8bdeacea2dfac2c6ade590e89280f05f759993eb68ef8a403bad3b7b71f"
  end

  def install
    bin.install "kopia"
  end
end
