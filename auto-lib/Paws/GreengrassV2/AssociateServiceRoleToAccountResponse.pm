
package Paws::GreengrassV2::AssociateServiceRoleToAccountResponse;
  use Moose;
  has AssociatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'AssociatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::AssociateServiceRoleToAccountResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time when the service role was associated with IoT Greengrass for
your Amazon Web Services account in this Amazon Web Services Region.


=head2 _request_id => Str


=cut

