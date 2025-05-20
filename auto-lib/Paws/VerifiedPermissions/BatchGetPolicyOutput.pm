
package Paws::VerifiedPermissions::BatchGetPolicyOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::BatchGetPolicyErrorItem]', traits => ['NameInRequest'], request_name => 'errors' , required => 1);
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::BatchGetPolicyOutputItem]', traits => ['NameInRequest'], request_name => 'results' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::BatchGetPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::VerifiedPermissions::BatchGetPolicyErrorItem>]

Information about the policies from the request that resulted in an
error. These results are returned in the order they were requested.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::VerifiedPermissions::BatchGetPolicyOutputItem>]

Information about the policies listed in the request that were
successfully returned. These results are returned in the order they
were requested.


=head2 _request_id => Str


=cut

1;