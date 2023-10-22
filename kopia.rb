# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.15.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.15.0/kopia-0.15.0-macOS-x64.tar.gz"
    sha256 "d3d6ab35c87ec60d29926d18d08cc4b2827be025c669d1605e9f693edbbf4fa7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.15.0/kopia-0.15.0-macOS-arm64.tar.gz"
    sha256 "9d308a05d91c9d5cf7eef18f1049887e49871d017e057fa082b7b56850a3c88a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.15.0/kopia-0.15.0-linux-x64.tar.gz"
    sha256 "ebb5a19dd2754dc45a9377b067b7dc82a0b894c8fda62900fc903a536f6dc98d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.15.0/kopia-0.15.0-linux-arm.tar.gz"
    sha256 "ff6cf2eec7b88329010d149bbcc46a10a1506db71ad260d303087a1491fb3046"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.15.0/kopia-0.15.0-linux-arm64.tar.gz"
    sha256 "be648f18d476a2f2c46e5aac135817917a81ddead6c80d5120008e02e23639df"
  end

  def install
    bin.install "kopia"
  end
end
