# Copyright (c) 2024 Joshua Schmitt
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

class MakePass < Formula
  desc "A simple command line password generator."
  homepage "https://github.com/jqshuv/makepass"
  version "1.1.1"
  url "https://registry.npmjs.org/makepass/-/makepass-1.1.1.tgz"
  sha256 "ee1031e9af9886a99b496ad1739572fc592bfc364abafc13c20f97a58faafd0e"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here, version isn't usually meaningful
    assert_match version.to_s, shell_output("#{bin}/foo --version")
  end
end