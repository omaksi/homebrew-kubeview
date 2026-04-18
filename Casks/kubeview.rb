cask "kubeview" do
  version "0.0.0"
  sha256 :no_check

  url "https://github.com/omaksi/kubeview/releases/download/v#{version}/KubeView-v#{version}.zip"
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
