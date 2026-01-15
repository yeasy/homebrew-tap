class Ask < Formula
  desc "Agent Skills Kit - Package Manager for AI Agent Skills"
  homepage "https://github.com/yeasy/ask"
  url "https://github.com/yeasy/ask/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b4f5c5c0398fb1b11c812276e34a40d830a7069b5947262a947e5c8e678eef8e"
  license "MIT"
  head "https://github.com/yeasy/ask.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"ask"
  end

  test do
    assert_match "Agent Skills Kit", shell_output("#{bin}/ask --help")
  end
end
