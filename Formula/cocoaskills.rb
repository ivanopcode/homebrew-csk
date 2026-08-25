class Cocoaskills < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.15.0/cocoaskills-0.15.0.tar.gz"
  sha256 "6e9869a3d1cc871972dc64ad219be1d43c7d585c83f1548b50a1a07fa3ec0ba7"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
