class Multicode < Formula
  desc "Orchestrate multiple AI coding CLIs through configurable roles"
  homepage "https://github.com/asdfkco/multi_code"
  url "https://github.com/asdfkco/multi_code/archive/refs/tags/v0.5.5.tar.gz"
  sha256 "8e58aa2242468d3f2dcb6b5128514d697f400636c05373df2300292af57a1819"
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
