# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.22.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.0/kopia-0.22.0-macOS-x64.tar.gz"
    sha256 "c418781b948dbaf8b05f22592e2f7f8ed57bb07b1f4b308d7f36b860ba31ee59"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia/releases/download/v0.22.0/kopia-0.22.0-macOS-arm64.tar.gz"
    sha256 "5e4738cce373abcdfe9562a379aaa20f3508bb0cc37cf3666ebda44eddb596e7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia/releases/download/v0.22.0/kopia-0.22.0-linux-x64.tar.gz"
    sha256 "65bb86a6485d2cb80582edd93470ba1a104106232521ffd4df7fe5a2186ca14f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.0/kopia-0.22.0-linux-arm.tar.gz"
    sha256 "acb44e04cec5a954e2fc6051a389c78e78806969ffd5728c887e70a03cef31eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia/releases/download/v0.22.0/kopia-0.22.0-linux-arm64.tar.gz"
    sha256 "23a184bf9f136c4f424c73209a7f558f6abc703e08d8ea6d534cba000cb75332"
  end

  def install
    bin.install "kopia"
  end
end
