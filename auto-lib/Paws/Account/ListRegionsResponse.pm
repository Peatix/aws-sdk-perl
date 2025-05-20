
package Paws::Account::ListRegionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Regions => (is => 'ro', isa => 'ArrayRef[Paws::Account::Region]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::ListRegionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there is more data to be returned, this will be populated. It should
be passed into the C<next-token> request parameter of C<list-regions>.


=head2 Regions => ArrayRef[L<Paws::Account::Region>]

This is a list of Regions for a given account, or if the filtered
parameter was used, a list of Regions that match the filter criteria
set in the C<filter> parameter.


=head2 _request_id => Str


=cut

