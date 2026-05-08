use Paws::JsonParamsService::Object;

# Operation purpose-built for request-side wire fixture testing.
# Carries one parameter per trait we want to exercise. The
# corresponding fixture under t/wire/fixtures/json/ documents
# what bytes should go on the wire.

package Paws::JsonParamsService::MethodReq;
  use Moose;

  has Name        => (is => 'ro', isa => 'Str');
  has Renamed     => (is => 'ro', isa => 'Str',
                      request_name => 'renamed_on_wire',
                      traits => ['NameInRequest']);
  has Number      => (is => 'ro', isa => 'Int');
  has Flag        => (is => 'ro', isa => 'Bool');
  has Items       => (is => 'ro', isa => 'ArrayRef[Str]');
  has Object      => (is => 'ro', isa => 'Paws::JsonParamsService::Object');

  use MooseX::ClassAttribute;
  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'MethodReq');
  class_has _returns     => (isa => 'Str', is => 'ro');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;
