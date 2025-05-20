
package Paws::SnowDeviceManagement::ListDeviceResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::ResourceSummary]', traits => ['NameInRequest'], request_name => 'resources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListDeviceResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token to continue to the next page of results.


=head2 Resources => ArrayRef[L<Paws::SnowDeviceManagement::ResourceSummary>]

A structure defining the resource's type, Amazon Resource Name (ARN),
and ID.


=head2 _request_id => Str


=cut

