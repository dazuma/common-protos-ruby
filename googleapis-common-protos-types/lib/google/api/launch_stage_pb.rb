# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/launch_stage.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/api/launch_stage.proto", :syntax => :proto3) do
    add_enum "google.api.LaunchStage" do
      value :LAUNCH_STAGE_UNSPECIFIED, 0
      value :UNIMPLEMENTED, 6
      value :PRELAUNCH, 7
      value :EARLY_ACCESS, 1
      value :ALPHA, 2
      value :BETA, 3
      value :GA, 4
      value :DEPRECATED, 5
    end
  end
end

module Google
  module Api
    LaunchStage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.LaunchStage").enummodule
  end
end
