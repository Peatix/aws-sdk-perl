
package Paws::CloudHSMv2::DeleteResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DeleteResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The policy previously attached to the resource.


=head2 ResourceArn => Str

Amazon Resource Name (ARN) of the resource from which the policy was
deleted.


=head2 _request_id => Str


=cut

1;