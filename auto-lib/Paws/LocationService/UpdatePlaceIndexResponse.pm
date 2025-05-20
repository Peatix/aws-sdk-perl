
package Paws::LocationService::UpdatePlaceIndexResponse;
  use Moose;
  has IndexArn => (is => 'ro', isa => 'Str', required => 1);
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdatePlaceIndexResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexArn => Str

The Amazon Resource Name (ARN) of the upated place index resource. Used
to specify a resource across Amazon Web Services.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:place-
index/ExamplePlaceIndex>

=back



=head2 B<REQUIRED> IndexName => Str

The name of the updated place index resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the place index resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

