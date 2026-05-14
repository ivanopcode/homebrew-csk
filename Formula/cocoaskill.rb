class Cocoaskill < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.1.2/cocoaskill-0.1.2.tar.gz"
  sha256 "2e5c119cfc8a78e72476e9d5e20939f39b29f9662aaeac0a7eac2513a37ef960"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
