# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.19.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.19.0/kopia-0.19.0-macOS-x64.tar.gz"
    sha256 "6becac56107ab5bd9000e9fa84e8aa1a9876a713293192670bb751dcdadfad9d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.19.0/kopia-0.19.0-macOS-arm64.tar.gz"
    sha256 "27c3fbbf4b563beda18c2fea7657fd9bd8f1193e5b918f907c9c639737c747df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.19.0/kopia-0.19.0-linux-x64.tar.gz"
    sha256 "c07843822c82ec752e5ee749774a18820b858215aabd7da448ce665b9b9107aa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.19.0/kopia-0.19.0-linux-arm.tar.gz"
    sha256 "fdfeceb195b81a7566c1b494b87eef30b4da1ff90c53450959f5a28efb66767f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.19.0/kopia-0.19.0-linux-arm64.tar.gz"
    sha256 "632db9d72f2116f1758350bf7c20aa57c22c220480aaccb5f839e75669210ed9"
  end

  def install
    bin.install "kopia"
  end
end
