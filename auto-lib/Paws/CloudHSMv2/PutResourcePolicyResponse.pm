
package Paws::CloudHSMv2::PutResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The policy attached to a resource.


=head2 ResourceArn => Str

Amazon Resource Name (ARN) of the resource to which a policy is
attached.


=head2 _request_id => Str


=cut

1;