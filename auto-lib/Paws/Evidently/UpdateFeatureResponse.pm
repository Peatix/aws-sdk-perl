
package Paws::Evidently::UpdateFeatureResponse;
  use Moose;
  has Feature => (is => 'ro', isa => 'Paws::Evidently::Feature', traits => ['NameInRequest'], request_name => 'feature', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::UpdateFeatureResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Feature => L<Paws::Evidently::Feature>

A structure that contains information about the updated feature.


=head2 _request_id => Str


=cut

