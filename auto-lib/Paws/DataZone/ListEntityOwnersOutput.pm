
package Paws::DataZone::ListEntityOwnersOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Owners => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::OwnerPropertiesOutput]', traits => ['NameInRequest'], request_name => 'owners', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEntityOwnersOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

When the number of entities is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of entities, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListEntityOwners> to list
the next set of entities.


=head2 B<REQUIRED> Owners => ArrayRef[L<Paws::DataZone::OwnerPropertiesOutput>]

The owners of the entity.


=head2 _request_id => Str


=cut

