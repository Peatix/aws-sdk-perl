
package Paws::VerifiedPermissions::BatchIsAuthorizedOutput;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::BatchIsAuthorizedOutputItem]', traits => ['NameInRequest'], request_name => 'results' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::BatchIsAuthorizedOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::VerifiedPermissions::BatchIsAuthorizedOutputItem>]

A series of C<Allow> or C<Deny> decisions for each request, and the
policies that produced them. These results are returned in the order
they were requested.


=head2 _request_id => Str


=cut

1;