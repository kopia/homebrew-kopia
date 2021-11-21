# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.6/kopia-0.9.6-macOS-x64.tar.gz"
    sha256 "929cd6d352a99cda662e69a906bf351dd16adb1336380dc1de252879340a3f93"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.6/kopia-0.9.6-macOS-arm64.tar.gz"
    sha256 "290ce6891055411143ee09294d25aa1e797dd87aa7a770018efef56ca1c73b05"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.6/kopia-0.9.6-linux-x64.tar.gz"
    sha256 "31b0a9f5b1d389c83a22a228c9bab2a486883ef7fd8cad59cc524eaf7ccdcdb1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.6/kopia-0.9.6-linux-arm.tar.gz"
    sha256 "c367496200b8cc8d654ecc581ff2f83307a333f5e6ff6e27187e10319b3f6253"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.6/kopia-0.9.6-linux-arm64.tar.gz"
    sha256 "393d22c7b241957a0c473d5da070e41ff188966846c4cd5b3ec10b47dfae6b9e"
  end

  def install
    bin.install "kopia"
  end
end
