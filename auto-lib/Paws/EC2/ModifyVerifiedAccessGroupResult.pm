
package Paws::EC2::ModifyVerifiedAccessGroupResult;
  use Moose;
  has VerifiedAccessGroup => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessGroup', request_name => 'verifiedAccessGroup', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessGroupResult

=head1 ATTRIBUTES


=head2 VerifiedAccessGroup => L<Paws::EC2::VerifiedAccessGroup>

Details about the Verified Access group.


=head2 _request_id => Str


=cut

