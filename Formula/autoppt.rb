# typed: false
# frozen_string_literal: true

class Autoppt < Formula
  desc "Generate Professional Presentations in Seconds using AI"
  homepage "https://github.com/yeasy/autoppt"
  url "https://github.com/yeasy/autoppt/archive/refs/tags/v0.5.9.tar.gz"
  version "0.5.9"
  sha256 "0084e9fdf545bfda8333cf531eecd7a96ffad3724c396beea3b61004c318e516"
  license "Apache-2.0"

  depends_on "pipx"
  depends_on "python@3.12"

  def install
    ENV["PIPX_HOME"] = libexec
    ENV["PIPX_BIN_DIR"] = libexec/"bin"
    system "pipx", "install", buildpath.to_s, "--python", Formula["python@3.12"].opt_bin/"python3.12"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      For thumbnail generation (--thumbnails), you need additional dependencies:
        brew install libreoffice poppler

      Configure API keys in ~/.env or environment:
        OPENAI_API_KEY=sk-...
        GOOGLE_API_KEY=AIza...
        ANTHROPIC_API_KEY=sk-ant-...
    EOS
  end

  test do
    assert_match "usage:", shell_output("#{bin}/autoppt --help", 2)
  end
end
