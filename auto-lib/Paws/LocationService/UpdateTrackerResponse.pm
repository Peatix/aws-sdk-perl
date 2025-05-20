
package Paws::LocationService::UpdateTrackerResponse;
  use Moose;
  has TrackerArn => (is => 'ro', isa => 'Str', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateTrackerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrackerArn => Str

The Amazon Resource Name (ARN) of the updated tracker resource. Used to
specify a resource across AWS.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:tracker/ExampleTracker>

=back



=head2 B<REQUIRED> TrackerName => Str

The name of the updated tracker resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the tracker resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

