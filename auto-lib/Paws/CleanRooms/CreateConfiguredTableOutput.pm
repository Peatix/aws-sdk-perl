
package Paws::CleanRooms::CreateConfiguredTableOutput;
  use Moose;
  has ConfiguredTable => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTable', traits => ['NameInRequest'], request_name => 'configuredTable', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateConfiguredTableOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredTable => L<Paws::CleanRooms::ConfiguredTable>

The created configured table.


=head2 _request_id => Str


=cut

