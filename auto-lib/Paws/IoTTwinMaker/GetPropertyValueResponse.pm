
package Paws::IoTTwinMaker::GetPropertyValueResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PropertyValues => (is => 'ro', isa => 'Paws::IoTTwinMaker::PropertyLatestValueMap', traits => ['NameInRequest'], request_name => 'propertyValues');
  has TabularPropertyValues => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::IoTTwinMaker::PropertyTableValue]]', traits => ['NameInRequest'], request_name => 'tabularPropertyValues');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetPropertyValueResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 PropertyValues => L<Paws::IoTTwinMaker::PropertyLatestValueMap>

An object that maps strings to the properties and latest property
values in the response. Each string in the mapping must be unique to
this object.


=head2 TabularPropertyValues => ArrayRef[L<ArrayRef[Paws::IoTTwinMaker::PropertyTableValue]>]

A table of property values.


=head2 _request_id => Str


=cut

