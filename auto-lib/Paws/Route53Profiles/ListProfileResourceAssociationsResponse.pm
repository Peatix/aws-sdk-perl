
package Paws::Route53Profiles::ListProfileResourceAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileResourceAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Route53Profiles::ProfileResourceAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::ListProfileResourceAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> resource associations match the specified
criteria, you can submit another C<ListProfileResourceAssociations>
request to get the next group of results. In the next request, specify
the value of C<NextToken> from the previous response.


=head2 ProfileResourceAssociations => ArrayRef[L<Paws::Route53Profiles::ProfileResourceAssociation>]

Information about the profile resource association that you specified
in a C<GetProfileResourceAssociation> request.


=head2 _request_id => Str


=cut

