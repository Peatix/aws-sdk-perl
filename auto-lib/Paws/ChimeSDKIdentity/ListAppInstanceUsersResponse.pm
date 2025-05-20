
package Paws::ChimeSDKIdentity::ListAppInstanceUsersResponse;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str');
  has AppInstanceUsers => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKIdentity::AppInstanceUserSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::ListAppInstanceUsersResponse

=head1 ATTRIBUTES


=head2 AppInstanceArn => Str

The ARN of the C<AppInstance>.


=head2 AppInstanceUsers => ArrayRef[L<Paws::ChimeSDKIdentity::AppInstanceUserSummary>]

The information for each requested C<AppInstanceUser>.


=head2 NextToken => Str

The token passed by previous API calls until all requested users are
returned.


=head2 _request_id => Str


=cut

