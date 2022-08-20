class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.3/licensed-3.7.3-darwin-x64.tar.gz"
      sha256 "b8889518d99593d244e85f1f212e7a8ca86763fe61269931d1b56a26b0965243"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.3/licensed-3.7.3-linux-x64.tar.gz"
      sha256 "5427613bdb88ede951e00440853ad4dc3724308bd939702c5a496a01952a3064"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
