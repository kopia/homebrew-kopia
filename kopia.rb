# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.1/kopia-0.10.1-macOS-x64.tar.gz"
    sha256 "9b3d22eb75aa4b96f4d2964e79689f1fd0bdabe038db1a8c05ecd9c2ff63686d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.1/kopia-0.10.1-macOS-arm64.tar.gz"
    sha256 "f09b8a94f26648f6013819aeb13640647705fd5f9ebdde979824e2c8ada4b6cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.1/kopia-0.10.1-linux-x64.tar.gz"
    sha256 "8f2571855da7bac0b9ac9910ca236d1c0a8270534e89c497baf937ef919c777a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.1/kopia-0.10.1-linux-arm.tar.gz"
    sha256 "8dffb4d02bb83e1222538e6dd02a017f762c26b0c27db7e407ebc7e45aa5408b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.1/kopia-0.10.1-linux-arm64.tar.gz"
    sha256 "b34de298bc7a095caa240d5af35e2cab09339516e4081142d86a2c211c52428e"
  end

  def install
    bin.install "kopia"
  end
end
