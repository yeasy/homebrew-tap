# typed: false
# frozen_string_literal: true

class Autoppt < Formula
  desc "Generate Professional Presentations in Seconds using AI"
  homepage "https://github.com/yeasy/autoppt"
  url "https://files.pythonhosted.org/packages/d9/7c/8e0692bf27f939375fe6312f35506d53e0347dd26a5b6f04b50e7594330e/autoppt-0.4.0.tar.gz"
  sha256 "6d13d5938e628ac1e827d630cc8bae2c581f5633568331b2c34bfcf0275c4870"
  license "Apache-2.0"

  depends_on "pipx"
  depends_on "python@3.12"

  def install
    ENV["PIPX_HOME"] = libexec
    ENV["PIPX_BIN_DIR"] = libexec/"bin"
    system "pipx", "install", "autoppt==#{version}", "--python", Formula["python@3.12"].opt_bin/"python3.12"
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
