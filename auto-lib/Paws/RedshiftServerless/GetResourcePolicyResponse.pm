
package Paws::RedshiftServerless::GetResourcePolicyResponse;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Paws::RedshiftServerless::ResourcePolicy', traits => ['NameInRequest'], request_name => 'resourcePolicy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ResourcePolicy => L<Paws::RedshiftServerless::ResourcePolicy>

The returned resource policy.


=head2 _request_id => Str


=cut

1;