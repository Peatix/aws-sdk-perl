
package Paws::CodeCatalyst::DeleteSpaceResponse;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::DeleteSpaceResponse

=head1 ATTRIBUTES


=head2 DisplayName => Str

The friendly name of the space displayed to users of the space in
Amazon CodeCatalyst.


=head2 B<REQUIRED> Name => Str

The name of the space.


=head2 _request_id => Str


=cut

