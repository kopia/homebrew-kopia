# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.14.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.14.1/kopia-0.14.1-macOS-x64.tar.gz"
    sha256 "013453c8d68853f5f3ca230777b4bfe3acd29c17e32d4c7cafb2b8397416c1e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.14.1/kopia-0.14.1-macOS-arm64.tar.gz"
    sha256 "72466762a977e41581b0a8f3139c93a8cac26dc46d70c22f648076b4559a48f2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.14.1/kopia-0.14.1-linux-x64.tar.gz"
    sha256 "43aa0e4b87e1c422071b43dd94188cd7c3e28faa7b957d28b2ab7854dd8f0bd8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.14.1/kopia-0.14.1-linux-arm.tar.gz"
    sha256 "ae578391bda61534bf563bd6dba70e7d33de7628251c048bf769b0320615c2b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.14.1/kopia-0.14.1-linux-arm64.tar.gz"
    sha256 "7c68c9b8834a18cdf098dc5c3e775fc89a169ab61aa7183fa54a2eae44863f98"
  end

  def install
    bin.install "kopia"
  end
end
