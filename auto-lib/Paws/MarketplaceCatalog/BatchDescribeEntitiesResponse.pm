
package Paws::MarketplaceCatalog::BatchDescribeEntitiesResponse;
  use Moose;
  has EntityDetails => (is => 'ro', isa => 'Paws::MarketplaceCatalog::EntityDetails');
  has Errors => (is => 'ro', isa => 'Paws::MarketplaceCatalog::Errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::BatchDescribeEntitiesResponse

=head1 ATTRIBUTES


=head2 EntityDetails => L<Paws::MarketplaceCatalog::EntityDetails>

Details about each entity.


=head2 Errors => L<Paws::MarketplaceCatalog::Errors>

A map of errors returned, with C<EntityId> as the key and
C<errorDetail> as the value.


=head2 _request_id => Str


=cut

