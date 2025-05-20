
package Paws::QBusiness::ListDataAccessorsResponse;
  use Moose;
  has DataAccessors => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DataAccessor]', traits => ['NameInRequest'], request_name => 'dataAccessors');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDataAccessorsResponse

=head1 ATTRIBUTES


=head2 DataAccessors => ArrayRef[L<Paws::QBusiness::DataAccessor>]

The list of data accessors.


=head2 NextToken => Str

The token to use to retrieve the next set of results, if there are any.


=head2 _request_id => Str


=cut

