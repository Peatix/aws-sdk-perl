
package Paws::Connect::ListSecurityProfileApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::Connect::Application]');
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListSecurityProfileApplicationsResponse

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::Connect::Application>]

A list of the third-party application's metadata.


=head2 LastModifiedRegion => Str

The Amazon Web Services Region where this resource was last modified.


=head2 LastModifiedTime => Str

The timestamp when this resource was last modified.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

