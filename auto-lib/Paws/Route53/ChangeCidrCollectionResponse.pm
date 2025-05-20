
package Paws::Route53::ChangeCidrCollectionResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeCidrCollectionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID that is returned by C<ChangeCidrCollection>. You can use it as
input to C<GetChange> to see if a CIDR collection change has propagated
or not.




=cut

