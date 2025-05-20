
package Paws::CustomerProfiles::CreateCalculatedAttributeDefinitionResponse;
  use Moose;
  has AttributeDetails => (is => 'ro', isa => 'Paws::CustomerProfiles::AttributeDetails');
  has CalculatedAttributeName => (is => 'ro', isa => 'Str');
  has Conditions => (is => 'ro', isa => 'Paws::CustomerProfiles::Conditions');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::CustomerProfiles::Filter');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Statistic => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateCalculatedAttributeDefinitionResponse

=head1 ATTRIBUTES


=head2 AttributeDetails => L<Paws::CustomerProfiles::AttributeDetails>

Mathematical expression and a list of attribute items specified in that
expression.


=head2 CalculatedAttributeName => Str

The unique name of the calculated attribute.


=head2 Conditions => L<Paws::CustomerProfiles::Conditions>

The conditions including range, object count, and threshold for the
calculated attribute.


=head2 CreatedAt => Str

The timestamp of when the calculated attribute definition was created.


=head2 Description => Str

The description of the calculated attribute.


=head2 DisplayName => Str

The display name of the calculated attribute.


=head2 Filter => L<Paws::CustomerProfiles::Filter>

The filter that was used as part of the request.


=head2 LastUpdatedAt => Str

The timestamp of when the calculated attribute definition was most
recently edited.


=head2 Statistic => Str

The aggregation operation to perform for the calculated attribute.

Valid values are: C<"FIRST_OCCURRENCE">, C<"LAST_OCCURRENCE">, C<"COUNT">, C<"SUM">, C<"MINIMUM">, C<"MAXIMUM">, C<"AVERAGE">, C<"MAX_OCCURRENCE">
=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

