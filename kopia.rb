# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.10.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.3/kopia-0.10.3-macOS-x64.tar.gz"
    sha256 "e7635cad11db696b0c67e603c7e49d4580e218baf95b70ad10d78dc77ad63e00"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.10.3/kopia-0.10.3-macOS-arm64.tar.gz"
    sha256 "e8b933a7e89932332aecfa67e59584223da28c58a4982bf4d0df032e374183bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.10.3/kopia-0.10.3-linux-x64.tar.gz"
    sha256 "62f960f185f1be8be3eca2add4d9858e3e705c7a957432537dce521a7565a739"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.3/kopia-0.10.3-linux-arm.tar.gz"
    sha256 "d6e8c0ee9b54ac8f9b588be83cb7fb17b44743d5fa7a25bdd2d8e7982cee96e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.10.3/kopia-0.10.3-linux-arm64.tar.gz"
    sha256 "e3ab3f4e11854a29cab2e36fd5ea7d9aba9a75a9883674f2c137e2369c6ec06e"
  end

  def install
    bin.install "kopia"
  end
end
