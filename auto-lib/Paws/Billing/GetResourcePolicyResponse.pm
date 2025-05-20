
package Paws::Billing::GetResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Billing::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The resource-based policy document attached to the resource in C<JSON>
format.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the billing view resource to which
the policy is attached to.


=head2 _request_id => Str


=cut

1;