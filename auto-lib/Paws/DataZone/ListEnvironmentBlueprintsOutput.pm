
package Paws::DataZone::ListEnvironmentBlueprintsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentBlueprintSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironmentBlueprintsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::DataZone::EnvironmentBlueprintSummary>]

The results of the C<ListEnvironmentBlueprints> action.


=head2 NextToken => Str

When the number of blueprints in the environment is greater than the
default value for the C<MaxResults> parameter, or if you explicitly
specify a value for C<MaxResults> that is less than the number of
blueprints in the environment, the response includes a pagination token
named C<NextToken>. You can specify this C<NextToken> value in a
subsequent call to C<ListEnvironmentBlueprints>to list the next set of
blueprints.


=head2 _request_id => Str


=cut

