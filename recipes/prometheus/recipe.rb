#!/bin/env ruby
# encoding: utf-8

class Prometheus < FPM::Cookery::Recipe
  description "The Prometheus monitoring system and time series database."
  GOPACKAGE = "github.com/prometheus/prometheus"
  TAG = "0.16.1"

  name      "zalando-prometheus"
  version   "0.16.1"
  revision  201508271136

  homepage      "http://prometheus.io/"
  source        "https://github.com/prometheus/prometheus.git", :with => :git, :extract => :clone, :tag => "#{TAG}"
  maintainer    "Markus Wyrsch <markus.wyrsch@zalando.de>"

  build_depends   "git"

  def build
      safesystem "make build"
  end

  def install
    etc("default").install_p(workdir("prometheus.default"), "prometheus")
    etc("init").install_p(workdir("prometheus.conf.upstart"), "prometheus.conf")
    bin.install builddir("prometheus-tag-0.16.1/prometheus")
    bin.install builddir("prometheus-tag-0.16.1/promtool")
  end
end
