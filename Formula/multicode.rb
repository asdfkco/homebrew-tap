class Multicode < Formula
  desc "Orchestrate multiple AI coding CLIs through configurable roles"
  homepage "https://github.com/asdfkco/multi_code"
  url "https://github.com/asdfkco/multi_code/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "14861a01aeb0216d25ecb3829c80fa6712a40ca74b2cfddb4bd586f31cb88dd8"
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
