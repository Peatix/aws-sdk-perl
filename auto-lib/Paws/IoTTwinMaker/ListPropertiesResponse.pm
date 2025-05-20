
package Paws::IoTTwinMaker::ListPropertiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PropertySummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::PropertySummary]', traits => ['NameInRequest'], request_name => 'propertySummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListPropertiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of property results.


=head2 B<REQUIRED> PropertySummaries => ArrayRef[L<Paws::IoTTwinMaker::PropertySummary>]

A list of objects that contain information about the properties.


=head2 _request_id => Str


=cut

