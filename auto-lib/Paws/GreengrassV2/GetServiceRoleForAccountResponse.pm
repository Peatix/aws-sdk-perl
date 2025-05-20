
package Paws::GreengrassV2::GetServiceRoleForAccountResponse;
  use Moose;
  has AssociatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'AssociatedAt');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'RoleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetServiceRoleForAccountResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time when the service role was associated with IoT Greengrass for
your Amazon Web Services account in this Amazon Web Services Region.


=head2 RoleArn => Str

The ARN of the service role that is associated with IoT Greengrass for
your Amazon Web Services account in this Amazon Web Services Region.


=head2 _request_id => Str


=cut

