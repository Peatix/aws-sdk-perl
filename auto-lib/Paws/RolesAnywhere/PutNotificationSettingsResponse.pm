
package Paws::RolesAnywhere::PutNotificationSettingsResponse;
  use Moose;
  has TrustAnchor => (is => 'ro', isa => 'Paws::RolesAnywhere::TrustAnchorDetail', traits => ['NameInRequest'], request_name => 'trustAnchor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::PutNotificationSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrustAnchor => L<Paws::RolesAnywhere::TrustAnchorDetail>




=head2 _request_id => Str


=cut

