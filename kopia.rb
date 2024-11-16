# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.18.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.18.0/kopia-0.18.0-macOS-x64.tar.gz"
    sha256 "78adc23ad7f8ba75dcbdf00cdda60083ba27210e562f57b3aef36d60f54e5d66"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.18.0/kopia-0.18.0-macOS-arm64.tar.gz"
    sha256 "2088bf370008a9ba81e7cb0664b03ddabf731ba46c8a720bb0523136065fd2e5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.18.0/kopia-0.18.0-linux-x64.tar.gz"
    sha256 "231e9baaec7963dade1c5b33c7069ae3c445d181bdafbb7bd24a475e42c694c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.18.0/kopia-0.18.0-linux-arm.tar.gz"
    sha256 "318e6f6093de1bb56a20cfac371bf336944a333ebce5d3634b9b827b344dc895"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.18.0/kopia-0.18.0-linux-arm64.tar.gz"
    sha256 "aebf9e5d305144a6762504bc11937e1ecf96cbf26743b9147da76b97cf490957"
  end

  def install
    bin.install "kopia"
  end
end
