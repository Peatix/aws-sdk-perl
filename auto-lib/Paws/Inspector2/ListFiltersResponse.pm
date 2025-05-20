
package Paws::Inspector2::ListFiltersResponse;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::Filter]', traits => ['NameInRequest'], request_name => 'filters', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListFiltersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::Inspector2::Filter>]

Contains details on the filters associated with your account.


=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.


=head2 _request_id => Str


=cut

