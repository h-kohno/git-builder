# ベースイメージをUbuntu 20.04に設定します
FROM ubuntu:20.04

# イメージを更新し、パッケージマネージャを最新の状態にします
RUN apt-get update && apt-get upgrade -y && apt-get clean

# 追加のパッケージをインストールします
RUN apt-get install -y \
    git \
    curl \
    wget \
    && apt-get clean

# 作業ディレクトリを設定します
WORKDIR /app

# GitHubからスクリプトやファイルをダウンロードするなどの操作を追加できます
