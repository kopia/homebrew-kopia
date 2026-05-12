# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.23.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.23.0/kopia-0.23.0-macOS-x64.tar.gz"
    sha256 "79bb117bd8f802a5772a117a97ef35ebe58ccef94514c26eabd5670bd66c4e03"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.23.0/kopia-0.23.0-macOS-arm64.tar.gz"
    sha256 "20a1eb89d7ed25190758d2f8394e788c2d82f65cd617f8e37ec848a860ba065b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.23.0/kopia-0.23.0-linux-x64.tar.gz"
    sha256 "fe5ddf931b712b53547dab7e541ed6befd27fd48014bee26d8781126f2f25a64"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.23.0/kopia-0.23.0-linux-arm.tar.gz"
    sha256 "12af4163a0ee1911e504324ac349826e9f9793545b449ff5150d3b83c1e77152"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.23.0/kopia-0.23.0-linux-arm64.tar.gz"
    sha256 "6fdceaf8cca13f8e79c0efa178dbd92afa6c845e74b6ad8168b94269166e587c"
  end

  def install
    bin.install "kopia"
  end
end
