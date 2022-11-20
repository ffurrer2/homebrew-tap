class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/#{version}/licensed-#{version}-darwin-x64.tar.gz"
      sha256 "e981c9902e6213857d801b57d4c1fbaa268a84c062bf76b83569e3061805434a"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/#{version}/licensed-#{version}-linux-x64.tar.gz"
      sha256 "abcf583591c820e24b7bf928017a2f51c5ba9c1b9000407aba3d5c71e2c98a5d"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
