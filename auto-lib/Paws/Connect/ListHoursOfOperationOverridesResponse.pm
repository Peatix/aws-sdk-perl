
package Paws::Connect::ListHoursOfOperationOverridesResponse;
  use Moose;
  has HoursOfOperationOverrideList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationOverride]');
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListHoursOfOperationOverridesResponse

=head1 ATTRIBUTES


=head2 HoursOfOperationOverrideList => ArrayRef[L<Paws::Connect::HoursOfOperationOverride>]

Information about the hours of operation override.


=head2 LastModifiedRegion => Str

The AWS Region where this resource was last modified.


=head2 LastModifiedTime => Str

The timestamp when this resource was last modified.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

