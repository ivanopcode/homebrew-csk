# frozen_string_literal: true

# Installs the current CocoaSkills release candidate.
class CocoaskillsRc < Formula
  include Language::Python::Virtualenv

  desc "Prerelease channel for the CocoaSkills CLI"
  homepage "https://github.com/ivanopcode/cocoaskills"
  url "https://github.com/ivanopcode/cocoaskills/releases/download/v0.13.0-rc.3/cocoaskills-0.13.0rc3.tar.gz"
  sha256 "64a8753a9c4c8f232c1fb2af72d3af64ea3c5ac5bcb966168bcdc4842c4d3d72"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csk --version")
  end
end
