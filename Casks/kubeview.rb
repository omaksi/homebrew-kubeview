cask "kubeview" do
  version "0.2.0"
  sha256 "7ac72229394b914dc6350f387303d167e20e5f5449e669e27bd1e9a018411279"

  url "https://github.com/omaksi/kubeview/releases/download/v0.2.0/KubeView-v0.2.0.zip"
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
