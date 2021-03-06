# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/phone_number.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/type/phone_number.proto", :syntax => :proto3) do
    add_message "google.type.PhoneNumber" do
      optional :extension, :string, 3
      oneof :kind do
        optional :e164_number, :string, 1
        optional :short_code, :message, 2, "google.type.PhoneNumber.ShortCode"
      end
    end
    add_message "google.type.PhoneNumber.ShortCode" do
      optional :region_code, :string, 1
      optional :number, :string, 2
    end
  end
end

module Google
  module Type
    PhoneNumber = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.PhoneNumber").msgclass
    PhoneNumber::ShortCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.PhoneNumber.ShortCode").msgclass
  end
end
