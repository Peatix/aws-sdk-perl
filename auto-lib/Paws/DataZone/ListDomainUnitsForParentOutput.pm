
package Paws::DataZone::ListDomainUnitsForParentOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DomainUnitSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDomainUnitsForParentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::DataZone::DomainUnitSummary>]

The results returned by this action.


=head2 NextToken => Str

When the number of domain units is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of domain units, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListDomainUnitsForParent to
list the next set of domain units.


=head2 _request_id => Str


=cut

