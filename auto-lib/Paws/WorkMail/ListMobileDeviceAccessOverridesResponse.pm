
package Paws::WorkMail::ListMobileDeviceAccessOverridesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Overrides => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::MobileDeviceAccessOverride]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMobileDeviceAccessOverridesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
E<ldquo>nullE<rdquo> when there are no more results to return.


=head2 Overrides => ArrayRef[L<Paws::WorkMail::MobileDeviceAccessOverride>]

The list of mobile device access overrides that exist for the specified
WorkMail organization and user.


=head2 _request_id => Str


=cut

1;