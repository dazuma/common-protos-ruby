# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/rpc/error_details.proto

require 'google/protobuf/duration_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/rpc/error_details.proto", :syntax => :proto3) do
    add_message "google.rpc.RetryInfo" do
      optional :retry_delay, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.rpc.DebugInfo" do
      repeated :stack_entries, :string, 1
      optional :detail, :string, 2
    end
    add_message "google.rpc.QuotaFailure" do
      repeated :violations, :message, 1, "google.rpc.QuotaFailure.Violation"
    end
    add_message "google.rpc.QuotaFailure.Violation" do
      optional :subject, :string, 1
      optional :description, :string, 2
    end
    add_message "google.rpc.ErrorInfo" do
      optional :reason, :string, 1
      optional :domain, :string, 2
      map :metadata, :string, :string, 3
    end
    add_message "google.rpc.PreconditionFailure" do
      repeated :violations, :message, 1, "google.rpc.PreconditionFailure.Violation"
    end
    add_message "google.rpc.PreconditionFailure.Violation" do
      optional :type, :string, 1
      optional :subject, :string, 2
      optional :description, :string, 3
    end
    add_message "google.rpc.BadRequest" do
      repeated :field_violations, :message, 1, "google.rpc.BadRequest.FieldViolation"
    end
    add_message "google.rpc.BadRequest.FieldViolation" do
      optional :field, :string, 1
      optional :description, :string, 2
    end
    add_message "google.rpc.RequestInfo" do
      optional :request_id, :string, 1
      optional :serving_data, :string, 2
    end
    add_message "google.rpc.ResourceInfo" do
      optional :resource_type, :string, 1
      optional :resource_name, :string, 2
      optional :owner, :string, 3
      optional :description, :string, 4
    end
    add_message "google.rpc.Help" do
      repeated :links, :message, 1, "google.rpc.Help.Link"
    end
    add_message "google.rpc.Help.Link" do
      optional :description, :string, 1
      optional :url, :string, 2
    end
    add_message "google.rpc.LocalizedMessage" do
      optional :locale, :string, 1
      optional :message, :string, 2
    end
  end
end

module Google
  module Rpc
    RetryInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.RetryInfo").msgclass
    DebugInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.DebugInfo").msgclass
    QuotaFailure = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.QuotaFailure").msgclass
    QuotaFailure::Violation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.QuotaFailure.Violation").msgclass
    ErrorInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.ErrorInfo").msgclass
    PreconditionFailure = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.PreconditionFailure").msgclass
    PreconditionFailure::Violation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.PreconditionFailure.Violation").msgclass
    BadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.BadRequest").msgclass
    BadRequest::FieldViolation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.BadRequest.FieldViolation").msgclass
    RequestInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.RequestInfo").msgclass
    ResourceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.ResourceInfo").msgclass
    Help = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.Help").msgclass
    Help::Link = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.Help.Link").msgclass
    LocalizedMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.LocalizedMessage").msgclass
  end
end
