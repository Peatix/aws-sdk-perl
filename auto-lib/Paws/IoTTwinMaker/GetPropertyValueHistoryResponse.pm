
package Paws::IoTTwinMaker::GetPropertyValueHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PropertyValues => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::PropertyValueHistory]', traits => ['NameInRequest'], request_name => 'propertyValues', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetPropertyValueHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 B<REQUIRED> PropertyValues => ArrayRef[L<Paws::IoTTwinMaker::PropertyValueHistory>]

An object that maps strings to the property definitions in the
component type. Each string in the mapping must be unique to this
object.


=head2 _request_id => Str


=cut

