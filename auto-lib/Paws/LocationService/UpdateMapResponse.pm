
package Paws::LocationService::UpdateMapResponse;
  use Moose;
  has MapArn => (is => 'ro', isa => 'Str', required => 1);
  has MapName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateMapResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MapArn => Str

The Amazon Resource Name (ARN) of the updated map resource. Used to
specify a resource across AWS.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:map/ExampleMap>

=back



=head2 B<REQUIRED> MapName => Str

The name of the updated map resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the map resource was last updated in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

