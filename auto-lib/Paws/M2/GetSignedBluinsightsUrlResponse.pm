
package Paws::M2::GetSignedBluinsightsUrlResponse;
  use Moose;
  has SignedBiUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signedBiUrl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetSignedBluinsightsUrlResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SignedBiUrl => Str

Single sign-on AWS Blu Insights URL.


=head2 _request_id => Str


=cut

