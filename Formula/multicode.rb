class Multicode < Formula
  desc "Orchestrate multiple AI coding CLIs through configurable roles"
  homepage "https://github.com/asdfkco/multi_code"
  url "https://github.com/asdfkco/multi_code/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "c97e082faf20cf4496efce1c74f05e2785e9cad64b128a3d268ceef72c548131"
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
