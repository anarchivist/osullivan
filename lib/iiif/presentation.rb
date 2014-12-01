require File.join(File.dirname(__FILE__), 'service')
require File.join(File.dirname(__FILE__), 'hash_behaviours')
%w{
abstract_resource
  annotation
  annotation_list
  canvas
  collection
  layer
  manifest
  resource
    image_resource 
  sequence 
    range
}.each do |f|
  require File.join(File.dirname(__FILE__), 'presentation', f)
end
require File.join(File.dirname(__FILE__), '../active_support/ordered_hash')

module IIIF
  module Presentation
    CONTEXT ||= 'http://iiif.io/api/presentation/2/context.json'

    class MissingRequiredKeyError < StandardError; end
    class IllegalValueError < StandardError; end
  end
end
