class Licensed < Formula
  desc "A Ruby gem to cache and verify the licenses of dependencies"
  homepage "https://github.com/github/licensed"
  version "3.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.5/licensed-3.7.5-darwin-x64.tar.gz"
      sha256 "b623e8ce60c9aab4f220d209b96d7651888dff8499ea7fc9419cc4b5cb14cb0b"

      def install
        bin.install "licensed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github/licensed/releases/download/3.7.5/licensed-3.7.5-linux-x64.tar.gz"
      sha256 "aeb7e77f34036b0bd64c6c8fdd3b6a1f079c723581b76b19e4cb693ee4221bed"

      def install
        bin.install "licensed"
      end
    end
  end

  test do
    system "#{bin}/licensed version"
  end
end
