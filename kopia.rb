# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.20.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.20.1/kopia-0.20.1-macOS-x64.tar.gz"
    sha256 "11ef707108eea14c9520f3536d05f9c30f38089655a0815714041d98bd85985d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.20.1/kopia-0.20.1-macOS-arm64.tar.gz"
    sha256 "248edebc63ee6ebb9604b5a1bc07066d211732d35afcd447139881d414139449"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.20.1/kopia-0.20.1-linux-x64.tar.gz"
    sha256 "3d8b5735f8d19892cb8afd247f93d95b0613010ba3ad653a9b93072ee280ce9d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.20.1/kopia-0.20.1-linux-arm.tar.gz"
    sha256 "81da708052cf27f7a68c2ecd99d324a67a1d7b817947d93c3f6b7bdf724fd946"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.20.1/kopia-0.20.1-linux-arm64.tar.gz"
    sha256 "074c7f58e217a677e4b8ff5adf46f044568d2c071c8ebde2eddd6a384c3a77e3"
  end

  def install
    bin.install "kopia"
  end
end
