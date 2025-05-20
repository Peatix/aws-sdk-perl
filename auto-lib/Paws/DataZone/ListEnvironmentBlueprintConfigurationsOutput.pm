
package Paws::DataZone::ListEnvironmentBlueprintConfigurationsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentBlueprintConfigurationItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironmentBlueprintConfigurationsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::EnvironmentBlueprintConfigurationItem>]

The results of the C<ListEnvironmentBlueprintConfigurations> action.


=head2 NextToken => Str

When the number of blueprint configurations is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of configurations,
the response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListEnvironmentBlueprintConfigurations> to list the next set of
configurations.


=head2 _request_id => Str


=cut

