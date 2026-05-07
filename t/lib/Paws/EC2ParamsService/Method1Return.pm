use Paws::EC2ParamsService::Object;

package Paws::EC2ParamsService::Method1Return;
  use Moose;

  has StringAttribute  => (is => 'ro', isa => 'Str',
                           request_name => 'stringAttribute',
                           traits => ['NameInRequest']);
  has IntegerAttribute => (is => 'ro', isa => 'Int',
                           request_name => 'integerAttribute',
                           traits => ['NameInRequest']);
  has BooleanAttribute => (is => 'ro', isa => 'Bool',
                           request_name => 'booleanAttribute',
                           traits => ['NameInRequest']);

  has ObjectAttribute => (is => 'ro',
                          isa => 'Paws::EC2ParamsService::Object',
                          request_name => 'objectAttribute',
                          traits => ['NameInRequest']);

  has _request_id => (is => 'ro', isa => 'Str');
1;
