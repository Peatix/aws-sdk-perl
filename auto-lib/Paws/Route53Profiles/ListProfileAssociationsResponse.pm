
package Paws::Route53Profiles::ListProfileAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Route53Profiles::ProfileAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::ListProfileAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> profile associations match the specified
criteria, you can submit another C<ListProfileAssociations> request to
get the next group of results. In the next request, specify the value
of C<NextToken> from the previous response.


=head2 ProfileAssociations => ArrayRef[L<Paws::Route53Profiles::ProfileAssociation>]

A complex type that containts settings information about the profile's
VPC associations.


=head2 _request_id => Str


=cut

