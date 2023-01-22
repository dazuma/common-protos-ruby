# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/docs/docs_addon_manifest.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/apps/script/type/extension_point_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/apps/script/type/docs/docs_addon_manifest.proto", :syntax => :proto3) do
    add_message "google.apps.script.type.docs.DocsAddOnManifest" do
      optional :homepage_trigger, :message, 1, "google.apps.script.type.HomepageExtensionPoint"
      optional :on_file_scope_granted_trigger, :message, 2, "google.apps.script.type.docs.DocsExtensionPoint"
    end
    add_message "google.apps.script.type.docs.DocsExtensionPoint" do
      optional :run_function, :string, 1
    end
  end
end

module Google
  module Apps
    module Script
      module Type
        module Docs
          DocsAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.docs.DocsAddOnManifest").msgclass
          DocsExtensionPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.docs.DocsExtensionPoint").msgclass
        end
      end
    end
  end
end