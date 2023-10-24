#!/bin/bash

source helpers.sh

notification "🔃 INSTALLING ADITTIONAL SOFTWARE"
sudo snap install nordpass --stable
sudo snap install godot --classic

notification "✅ adittional programs installed"
