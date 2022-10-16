class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.4/licensed-3.7.4-darwin-x64.tar.gz"
      sha256 "986da6155e119d0a7634f1e893106704d6d0768e845783363d93c6a16fbbccaa"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.4/licensed-3.7.4-linux-x64.tar.gz"
      sha256 "9a4f1eeb975c0d870ffeedb451c98b379376f683e9c96636939af00ea6ddd810"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
