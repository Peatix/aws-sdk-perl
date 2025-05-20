
package Paws::EC2::CreateCoipCidrResult;
  use Moose;
  has CoipCidr => (is => 'ro', isa => 'Paws::EC2::CoipCidr', request_name => 'coipCidr', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCoipCidrResult

=head1 ATTRIBUTES


=head2 CoipCidr => L<Paws::EC2::CoipCidr>

Information about a range of customer-owned IP addresses.


=head2 _request_id => Str


=cut

