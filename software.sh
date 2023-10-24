#!/bin/bash

source helpers.sh

notification "🔃 INSTALLING ADITTIONAL SOFTWARE"
sudo snap install nordpass --stable
sudo snap install godot --stable

notification "✅ adittional programs installed"
