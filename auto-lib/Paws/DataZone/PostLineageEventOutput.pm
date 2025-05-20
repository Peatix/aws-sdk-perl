
package Paws::DataZone::PostLineageEventOutput;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::PostLineageEventOutput

=head1 ATTRIBUTES


=head2 DomainId => Str

The ID of the domain.


=head2 Id => Str

The ID of the lineage event.


=head2 _request_id => Str


=cut

