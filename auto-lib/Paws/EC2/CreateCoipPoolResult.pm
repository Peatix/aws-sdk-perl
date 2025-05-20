
package Paws::EC2::CreateCoipPoolResult;
  use Moose;
  has CoipPool => (is => 'ro', isa => 'Paws::EC2::CoipPool', request_name => 'coipPool', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCoipPoolResult

=head1 ATTRIBUTES


=head2 CoipPool => L<Paws::EC2::CoipPool>

Information about the CoIP address pool.


=head2 _request_id => Str


=cut

