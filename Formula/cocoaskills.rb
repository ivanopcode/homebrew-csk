class Cocoaskills < Formula
  include Language::Python::Virtualenv

  desc "Local skill manager for AI agent skills"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.4.0/cocoaskills-0.4.0.tar.gz"
  sha256 "0771bdac180861fb38f9ab40327b77ec3027fd3d1105b175adb6fc55c30f3246"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
