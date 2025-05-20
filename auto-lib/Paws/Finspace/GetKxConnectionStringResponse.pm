
package Paws::Finspace::GetKxConnectionStringResponse;
  use Moose;
  has SignedConnectionString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signedConnectionString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxConnectionStringResponse

=head1 ATTRIBUTES


=head2 SignedConnectionString => Str

The signed connection string that you can use to connect to clusters.


=head2 _request_id => Str


=cut

