cask "kubeview" do
  version "0.1.1"
  sha256 "c0c19bed0b4bd1e55cbf7a188abc51570edb5f75d10124cd5644f05874498d00"

  url "https://github.com/omaksi/kubeview/releases/download/v0.1.1/KubeView-v0.1.1.zip"
  name "KubeView"
  desc "Native macOS desktop app for viewing Kubernetes clusters"
  homepage "https://github.com/omaksi/kubeview"

  depends_on formula: "kubernetes-cli"
  depends_on macos: ">= :sonoma"

  app "KubeView.app"

  zap trash: [
    "~/Library/Preferences/com.omaksi.kubeview.plist",
  ]
end
