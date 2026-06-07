class Multicode < Formula
  desc "Orchestrate multiple AI coding CLIs through configurable roles"
  homepage "https://github.com/asdfkco/multi_code"
  url "https://github.com/asdfkco/multi_code/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "d7988487a64abeb35284dd6502facfce642072f563c3ed196795253c31a4a2e4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multicode --version")
    system "#{bin}/multicode", "--help"
  end
end
