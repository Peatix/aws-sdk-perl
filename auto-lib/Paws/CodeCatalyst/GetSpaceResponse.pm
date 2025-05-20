
package Paws::CodeCatalyst::GetSpaceResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RegionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSpaceResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the space.


=head2 DisplayName => Str

The friendly name of the space displayed to users.


=head2 B<REQUIRED> Name => Str

The name of the space.


=head2 B<REQUIRED> RegionName => Str

The Amazon Web Services Region where the space exists.


=head2 _request_id => Str


=cut

