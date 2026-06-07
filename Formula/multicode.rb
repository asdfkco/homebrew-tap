class Multicode < Formula
  desc "Orchestrate multiple AI coding CLIs through configurable roles"
  homepage "https://github.com/asdfkco/multi_code"
  url "https://github.com/asdfkco/multi_code/archive/refs/tags/v0.5.6.tar.gz"
  sha256 "66665b446f5fe6bdefbc60e600c0b4a4d97050c9eb0a19031f02b6801d4645ee"
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
