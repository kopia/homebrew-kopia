# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.5/kopia-0.10.5-macOS-x64.tar.gz"
    sha256 "92f30f9549738ae9128efe78be522a5c4e799a9267924cc9edf07d384922b3e4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.5/kopia-0.10.5-macOS-arm64.tar.gz"
    sha256 "e3eaa6fcb9d42a19755c0a9f23db8b04565924e3baddb2af5d00090794bb17b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.5/kopia-0.10.5-linux-x64.tar.gz"
    sha256 "0c34afba3e665effa2876bbac12cbb9eacc73b9278b7ae45da60000bf08627b6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.5/kopia-0.10.5-linux-arm.tar.gz"
    sha256 "fcc0b1396fba588c82bcb3b492701a55cf3ee84694a869ea3f54ae878356b7bf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.5/kopia-0.10.5-linux-arm64.tar.gz"
    sha256 "1248824e6d114b48cdcf437c3501112b2a675bbb59bfe9d2969d6eb087286e87"
  end

  def install
    bin.install "kopia"
  end
end
