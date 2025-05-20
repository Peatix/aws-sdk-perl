
package Paws::CustomerProfiles::ProfileAttributeValuesResponse;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::AttributeValueItem]');
  has StatusCode => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ProfileAttributeValuesResponse

=head1 ATTRIBUTES


=head2 AttributeName => Str

The attribute name.


=head2 DomainName => Str

The name of the domain.


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::AttributeValueItem>]

The items returned as part of the response.


=head2 StatusCode => Int

The status code for the response.


=head2 _request_id => Str


=cut

