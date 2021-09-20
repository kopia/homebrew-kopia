# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.0-rc2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc2/kopia-0.9.0-rc2-macOS-x64.tar.gz"
    sha256 "9515c42e7c2c0f1c4912e880b0a0cb6c8f74b0e7f4d5b8bbf1602cfbe72ed0bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc2/kopia-0.9.0-rc2-macOS-arm64.tar.gz"
    sha256 "2409b1cc7d7961cc37b8d3dea11409895f44f6e6694595baaa8acb3d60f71de0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc2/kopia-0.9.0-rc2-linux-x64.tar.gz"
    sha256 "09a8d1e3059cad4414b01d7bb4aa4351e7ec679888859870218949f2fec4deea"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc2/kopia-0.9.0-rc2-linux-arm.tar.gz"
    sha256 "85fb2b1f3695e89e6e9f809f21e88cdabaec16046f86ce590fe504fb55132620"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.0-rc2/kopia-0.9.0-rc2-linux-arm64.tar.gz"
    sha256 "1da6f41de69b6dfc5c07b62e619c29d8eb2d0cdbc6424f761059662bfacaa895"
  end

  def install
    bin.install "kopia"
  end
end
