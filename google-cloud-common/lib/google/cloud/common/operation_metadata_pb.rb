# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/common/operation_metadata.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/common/operation_metadata.proto", :syntax => :proto3) do
    add_message "google.cloud.common.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_detail, :string, 5
      optional :cancel_requested, :bool, 6
      optional :api_version, :string, 7
    end
  end
end

module Google
  module Cloud
    module Common
      OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.common.OperationMetadata").msgclass
    end
  end
end