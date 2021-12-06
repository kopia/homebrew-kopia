# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.9.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.7/kopia-0.9.7-macOS-x64.tar.gz"
    sha256 "0079ab65f607647784ef7c2034619cb0cfdec8e45b2caae9bfd9ce849ddfdb53"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.9.7/kopia-0.9.7-macOS-arm64.tar.gz"
    sha256 "b296587bcccccff1785c2c0bd48c57fb79170f6f428b48558ddd2727eded1227"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.9.7/kopia-0.9.7-linux-x64.tar.gz"
    sha256 "8aeb09a204bbd56edf4ca619b2589fa385263e22c08dbafd064cf7f366e89af4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.7/kopia-0.9.7-linux-arm.tar.gz"
    sha256 "17256f90c9536356127953d1e811694f6e3f72a945274c06c040e93a44e82cac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.9.7/kopia-0.9.7-linux-arm64.tar.gz"
    sha256 "5820e20be1a48904f4ec1de26738749e70b7ac1c37d3d8cd84cebdf24165361b"
  end

  def install
    bin.install "kopia"
  end
end
