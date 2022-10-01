# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.12.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.12.1/kopia-0.12.1-macOS-x64.tar.gz"
    sha256 "cb5024b737f04619cd21bc7a48d87b273d1e9eb0f2ba57cb921d0984b3b1529c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.12.1/kopia-0.12.1-macOS-arm64.tar.gz"
    sha256 "965a69df9d7b94f39eed1148ff37c089c12a393b11605caa7a84dbf0351873f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.12.1/kopia-0.12.1-linux-x64.tar.gz"
    sha256 "706f0f12dce12c3ad6d8c45d00ef467f2247cb0c623c691255bb9fa0b3fbdf35"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.12.1/kopia-0.12.1-linux-arm.tar.gz"
    sha256 "e2377a7ce04c22b47892301cc7a6a6446e25bbd5a09c4febd558845d165e9a5e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.12.1/kopia-0.12.1-linux-arm64.tar.gz"
    sha256 "26ab728f41b81d5c52bffae94e60e579623e59a4d30308bec6994103f95ee8d2"
  end

  def install
    bin.install "kopia"
  end
end
