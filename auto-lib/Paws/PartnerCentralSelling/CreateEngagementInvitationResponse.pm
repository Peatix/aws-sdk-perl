
package Paws::PartnerCentralSelling::CreateEngagementInvitationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateEngagementInvitationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies the engagement
invitation.


=head2 B<REQUIRED> Id => Str

Unique identifier assigned to the newly created engagement invitation.


=head2 _request_id => Str


=cut

1;