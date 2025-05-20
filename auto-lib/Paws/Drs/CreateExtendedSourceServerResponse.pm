
package Paws::Drs::CreateExtendedSourceServerResponse;
  use Moose;
  has SourceServer => (is => 'ro', isa => 'Paws::Drs::SourceServer', traits => ['NameInRequest'], request_name => 'sourceServer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateExtendedSourceServerResponse

=head1 ATTRIBUTES


=head2 SourceServer => L<Paws::Drs::SourceServer>

Created extended source server.


=head2 _request_id => Str


=cut

