
package Paws::WorkMail::ListAvailabilityConfigurationsResponse;
  use Moose;
  has AvailabilityConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::AvailabilityConfiguration]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListAvailabilityConfigurationsResponse

=head1 ATTRIBUTES


=head2 AvailabilityConfigurations => ArrayRef[L<Paws::WorkMail::AvailabilityConfiguration>]

The list of C<AvailabilityConfiguration>'s that exist for the specified
WorkMail organization.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no further results to return.


=head2 _request_id => Str


=cut

1;