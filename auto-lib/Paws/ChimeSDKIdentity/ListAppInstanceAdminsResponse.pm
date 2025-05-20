
package Paws::ChimeSDKIdentity::ListAppInstanceAdminsResponse;
  use Moose;
  has AppInstanceAdmins => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKIdentity::AppInstanceAdminSummary]');
  has AppInstanceArn => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::ListAppInstanceAdminsResponse

=head1 ATTRIBUTES


=head2 AppInstanceAdmins => ArrayRef[L<Paws::ChimeSDKIdentity::AppInstanceAdminSummary>]

The information for each administrator.


=head2 AppInstanceArn => Str

The ARN of the C<AppInstance>.


=head2 NextToken => Str

The token returned from previous API requests until the number of
administrators is reached.


=head2 _request_id => Str


=cut

