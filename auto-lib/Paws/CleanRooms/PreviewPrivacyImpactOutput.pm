
package Paws::CleanRooms::PreviewPrivacyImpactOutput;
  use Moose;
  has PrivacyImpact => (is => 'ro', isa => 'Paws::CleanRooms::PrivacyImpact', traits => ['NameInRequest'], request_name => 'privacyImpact', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::PreviewPrivacyImpactOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PrivacyImpact => L<Paws::CleanRooms::PrivacyImpact>

An estimate of the number of aggregation functions that the member who
can query can run given the epsilon and noise parameters. This does not
change the privacy budget.


=head2 _request_id => Str


=cut

