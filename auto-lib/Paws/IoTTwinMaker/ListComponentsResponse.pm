
package Paws::IoTTwinMaker::ListComponentsResponse;
  use Moose;
  has ComponentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::ComponentSummary]', traits => ['NameInRequest'], request_name => 'componentSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListComponentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentSummaries => ArrayRef[L<Paws::IoTTwinMaker::ComponentSummary>]

A list of objects that contain information about the components.


=head2 NextToken => Str

The string that specifies the next page of component results.


=head2 _request_id => Str


=cut

