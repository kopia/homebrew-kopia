# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.13.0-rc1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc1/kopia-0.13.0-rc1-macOS-x64.tar.gz"
    sha256 "fcf37562793cbfe2a6716b3651f46fb25a1b03016559bbceca4274d2f75884b5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc1/kopia-0.13.0-rc1-macOS-arm64.tar.gz"
    sha256 "a128542788e87c6b9c9cd297e904233c0b4ea6d031b447bab5a0452fbd98222c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc1/kopia-0.13.0-rc1-linux-x64.tar.gz"
    sha256 "6f9da9beedc1534bd9e95bf3b38a402ad07de473b0bb069d5091c23979748bf4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc1/kopia-0.13.0-rc1-linux-arm.tar.gz"
    sha256 "314cf647305118e57a076bb57cd3101b81c828a9636250fd6ec2f7616587e383"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.13.0-rc1/kopia-0.13.0-rc1-linux-arm64.tar.gz"
    sha256 "ac62dd785bfdce3b158dfad353b4fb70d6bd76725dd0a01abf9300bd69b22316"
  end

  def install
    bin.install "kopia"
  end
end
