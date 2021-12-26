# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.8/kopia-0.9.8-macOS-x64.tar.gz"
    sha256 "7fbdcf033fb60268ba94bf19b28b04036880d52869645d4e05ea64eb2f270379"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.8/kopia-0.9.8-macOS-arm64.tar.gz"
    sha256 "921c3da9817286adda98d6e14c44a3f51da08eee5ff77ccd03621bfd8add7864"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.8/kopia-0.9.8-linux-x64.tar.gz"
    sha256 "58f5bd52dc834fd22f8fa8353b06a89e429e73feea0f8ffcfa8e221f0a6790d2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.8/kopia-0.9.8-linux-arm.tar.gz"
    sha256 "abda92ab84b5fe2d1620abf3066a6ecfab04c5dcf30962d2856d56377fd7b780"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.8/kopia-0.9.8-linux-arm64.tar.gz"
    sha256 "a84d762801283f094d57dde08267b565263d6676bf28d360b9acaab240cb8c18"
  end

  def install
    bin.install "kopia"
  end
end
