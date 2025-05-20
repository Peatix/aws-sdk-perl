
package Paws::EC2::ModifyVerifiedAccessInstanceResult;
  use Moose;
  has VerifiedAccessInstance => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessInstance', request_name => 'verifiedAccessInstance', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessInstanceResult

=head1 ATTRIBUTES


=head2 VerifiedAccessInstance => L<Paws::EC2::VerifiedAccessInstance>

Details about the Verified Access instance.


=head2 _request_id => Str


=cut

