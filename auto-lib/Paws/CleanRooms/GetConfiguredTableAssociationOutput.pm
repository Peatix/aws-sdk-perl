
package Paws::CleanRooms::GetConfiguredTableAssociationOutput;
  use Moose;
  has ConfiguredTableAssociation => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAssociation', traits => ['NameInRequest'], request_name => 'configuredTableAssociation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetConfiguredTableAssociationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredTableAssociation => L<Paws::CleanRooms::ConfiguredTableAssociation>

The entire configured table association object.


=head2 _request_id => Str


=cut

