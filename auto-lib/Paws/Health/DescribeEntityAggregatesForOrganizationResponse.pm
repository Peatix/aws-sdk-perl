
package Paws::Health::DescribeEntityAggregatesForOrganizationResponse;
  use Moose;
  has OrganizationEntityAggregates => (is => 'ro', isa => 'ArrayRef[Paws::Health::OrganizationEntityAggregate]', traits => ['NameInRequest'], request_name => 'organizationEntityAggregates' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEntityAggregatesForOrganizationResponse

=head1 ATTRIBUTES


=head2 OrganizationEntityAggregates => ArrayRef[L<Paws::Health::OrganizationEntityAggregate>]

The list of entity aggregates for each of the specified accounts that
are affected by each of the specified events.


=head2 _request_id => Str


=cut

1;