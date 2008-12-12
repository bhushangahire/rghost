# shairon.toledo@gmail.com
# 14 de Dezembro de 2007
#
require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name      = "rghost"
  s.version = "0.8.6.1"
  s.author    = "Shairon Toledo"
  s.email     = "shairon.toledo@gmail.com"
  s.homepage = "http://rghost.rubyforge.org"
  s.platform = Gem::Platform::RUBY
  s.rubyforge_project="Ruby Ghostscript Engine is a document creation and conversion API, support(PDF,PS,GIF,TIF,PNG,JPG...). It uses the GhostScript framework for the format conversion, utilizes EPS templates and is optimized to work with larger documents."
  s.summary = "Ruby Ghostscript Engine is a document creation and conversion API, support(PDF,PS,GIF,TIF,PNG,JPG...). It uses the GhostScript framework for the format conversion, utilizes EPS templates and is optimized to work with larger documents."
  candidates = Dir.glob("{bin,docs,lib,tests}/**/*")
  s.files     = candidates.delete_if do |item|
    #puts item
    item.include?(".svn") || item.include?(".tar") || item.include?("lib/rghost/doc/") || item.include?("test_") || item.to_s =~  /^doc$/
  end
  s.require_path      = "lib"
  #s.autorequire       = "rghost"
  #s.has_rdoc          = true
  #s.extra_rdoc_files = ["README"]
  #s.add_dependency("BlueCloth", ">= 0.0.4")
end
if $0 == __FILE__
      Gem::manage_gems
      Gem::Builder.new(spec).build
end
