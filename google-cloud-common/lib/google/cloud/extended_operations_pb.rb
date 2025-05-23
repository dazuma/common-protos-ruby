# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/extended_operations.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'


descriptor_data = "\n&google/cloud/extended_operations.proto\x12\x0cgoogle.cloud\x1a google/protobuf/descriptor.proto*b\n\x18OperationResponseMapping\x12\r\n\tUNDEFINED\x10\x00\x12\x08\n\x04NAME\x10\x01\x12\n\n\x06STATUS\x10\x02\x12\x0e\n\nERROR_CODE\x10\x03\x12\x11\n\rERROR_MESSAGE\x10\x04:_\n\x0foperation_field\x12\x1d.google.protobuf.FieldOptions\x18\xfd\x08 \x01(\x0e\x32&.google.cloud.OperationResponseMapping:?\n\x17operation_request_field\x12\x1d.google.protobuf.FieldOptions\x18\xfe\x08 \x01(\t:@\n\x18operation_response_field\x12\x1d.google.protobuf.FieldOptions\x18\xff\x08 \x01(\t::\n\x11operation_service\x12\x1e.google.protobuf.MethodOptions\x18\xe1\t \x01(\t:A\n\x18operation_polling_method\x12\x1e.google.protobuf.MethodOptions\x18\xe2\t \x01(\x08\x42y\n\x10\x63om.google.cloudB\x17\x45xtendedOperationsProtoP\x01ZCgoogle.golang.org/genproto/googleapis/cloud/extendedops;extendedops\xa2\x02\x04GAPIb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    OperationResponseMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.OperationResponseMapping").enummodule
  end
end

#### Source proto file: google/cloud/extended_operations.proto ####
#
# // Copyright 2025 Google LLC
# //
# // Licensed under the Apache License, Version 2.0 (the "License");
# // you may not use this file except in compliance with the License.
# // You may obtain a copy of the License at
# //
# //     http://www.apache.org/licenses/LICENSE-2.0
# //
# // Unless required by applicable law or agreed to in writing, software
# // distributed under the License is distributed on an "AS IS" BASIS,
# // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# // See the License for the specific language governing permissions and
# // limitations under the License.
#
# // This file contains custom annotations that are used by GAPIC generators to
# // handle Long Running Operation methods (LRO) that are NOT compliant with
# // https://google.aip.dev/151. These annotations are public for technical
# // reasons only. Please DO NOT USE them in your protos.
# syntax = "proto3";
#
# package google.cloud;
#
# import "google/protobuf/descriptor.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/cloud/extendedops;extendedops";
# option java_multiple_files = true;
# option java_outer_classname = "ExtendedOperationsProto";
# option java_package = "com.google.cloud";
# option objc_class_prefix = "GAPI";
#
# // FieldOptions to match corresponding fields in the initial request,
# // polling request and operation response messages.
# //
# // Example:
# //
# // In an API-specific operation message:
# //
# //     message MyOperation {
# //       string http_error_message = 1 [(operation_field) = ERROR_MESSAGE];
# //       int32 http_error_status_code = 2 [(operation_field) = ERROR_CODE];
# //       string id = 3 [(operation_field) = NAME];
# //       Status status = 4 [(operation_field) = STATUS];
# //     }
# //
# // In a polling request message (the one which is used to poll for an LRO
# // status):
# //
# //     message MyPollingRequest {
# //       string operation = 1 [(operation_response_field) = "id"];
# //       string project = 2;
# //       string region = 3;
# //     }
# //
# // In an initial request message (the one which starts an LRO):
# //
# //    message MyInitialRequest {
# //      string my_project = 2 [(operation_request_field) = "project"];
# //      string my_region = 3 [(operation_request_field) = "region"];
# //    }
# //
# extend google.protobuf.FieldOptions {
#   // A field annotation that maps fields in an API-specific Operation object to
#   // their standard counterparts in google.longrunning.Operation. See
#   // OperationResponseMapping enum definition.
#   OperationResponseMapping operation_field = 1149;
#
#   // A field annotation that maps fields in the initial request message
#   // (the one which started the LRO) to their counterparts in the polling
#   // request message. For non-standard LRO, the polling response may be missing
#   // some of the information needed to make a subsequent polling request. The
#   // missing information (for example, project or region ID) is contained in the
#   // fields of the initial request message that this annotation must be applied
#   // to. The string value of the annotation corresponds to the name of the
#   // counterpart field in the polling request message that the annotated field's
#   // value will be copied to.
#   string operation_request_field = 1150;
#
#   // A field annotation that maps fields in the polling request message to their
#   // counterparts in the initial and/or polling response message. The initial
#   // and the polling methods return an API-specific Operation object. Some of
#   // the fields from that response object must be reused in the subsequent
#   // request (like operation name/ID) to fully identify the polled operation.
#   // This annotation must be applied to the fields in the polling request
#   // message, the string value of the annotation must correspond to the name of
#   // the counterpart field in the Operation response object whose value will be
#   // copied to the annotated field.
#   string operation_response_field = 1151;
# }
#
# // MethodOptions to identify the actual service and method used for operation
# // status polling.
# //
# // Example:
# //
# // In a method, which starts an LRO:
# //
# //     service MyService {
# //       rpc Foo(MyInitialRequest) returns (MyOperation) {
# //         option (operation_service) = "MyPollingService";
# //       }
# //     }
# //
# // In a polling method:
# //
# //     service MyPollingService {
# //       rpc Get(MyPollingRequest) returns (MyOperation) {
# //         option (operation_polling_method) = true;
# //       }
# //     }
# extend google.protobuf.MethodOptions {
#   // A method annotation that maps an LRO method (the one which starts an LRO)
#   // to the service, which will be used to poll for the operation status. The
#   // annotation must be applied to the method which starts an LRO, the string
#   // value of the annotation must correspond to the name of the service used to
#   // poll for the operation status.
#   string operation_service = 1249;
#
#   // A method annotation that marks methods that can be used for polling
#   // operation status (e.g. the MyPollingService.Get(MyPollingRequest) method).
#   bool operation_polling_method = 1250;
# }
#
# // An enum to be used to mark the essential (for polling) fields in an
# // API-specific Operation object. A custom Operation object may contain many
# // different fields, but only few of them are essential to conduct a successful
# // polling process.
# enum OperationResponseMapping {
#   // Do not use.
#   UNDEFINED = 0;
#
#   // A field in an API-specific (custom) Operation object which carries the same
#   // meaning as google.longrunning.Operation.name.
#   NAME = 1;
#
#   // A field in an API-specific (custom) Operation object which carries the same
#   // meaning as google.longrunning.Operation.done. If the annotated field is of
#   // an enum type, `annotated_field_name == EnumType.DONE` semantics should be
#   // equivalent to `Operation.done == true`. If the annotated field is of type
#   // boolean, then it should follow the same semantics as Operation.done.
#   // Otherwise, a non-empty value should be treated as `Operation.done == true`.
#   STATUS = 2;
#
#   // A field in an API-specific (custom) Operation object which carries the same
#   // meaning as google.longrunning.Operation.error.code.
#   ERROR_CODE = 3;
#
#   // A field in an API-specific (custom) Operation object which carries the same
#   // meaning as google.longrunning.Operation.error.message.
#   ERROR_MESSAGE = 4;
# }
