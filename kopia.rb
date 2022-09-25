# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.12.0-rc1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0-rc1/kopia-0.12.0-rc1-macOS-x64.tar.gz"
    sha256 "1480f1670c3e5c3c9bacc7974bf9a47d60c4e0ba0f0b0b7e148642b8fa617b73"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0-rc1/kopia-0.12.0-rc1-macOS-arm64.tar.gz"
    sha256 "2fcf57e7b316a2b4167c493bb0e506dc401e017ecd354112767b44e389bea259"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0-rc1/kopia-0.12.0-rc1-linux-x64.tar.gz"
    sha256 "732e703858d936e0782d2f2c299c063b9271c53a381e4fd9d1c1de7661366112"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0-rc1/kopia-0.12.0-rc1-linux-arm.tar.gz"
    sha256 "16b61405f6ae1d98b4ae6a4a06ac28a8f20343c89cad5fdd1ca40c2b9b60bdc6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.12.0-rc1/kopia-0.12.0-rc1-linux-arm64.tar.gz"
    sha256 "4f7cebb57200c955d2758fba771d6d9cb872e4ce4a19822a3947a258122e10ba"
  end

  def install
    bin.install "kopia"
  end
end
