
package Paws::SecurityLake::CreateCustomLogSourceResponse;
  use Moose;
  has Source => (is => 'ro', isa => 'Paws::SecurityLake::CustomLogSourceResource', traits => ['NameInRequest'], request_name => 'source');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateCustomLogSourceResponse

=head1 ATTRIBUTES


=head2 Source => L<Paws::SecurityLake::CustomLogSourceResource>

The third-party custom source that was created.


=head2 _request_id => Str


=cut

