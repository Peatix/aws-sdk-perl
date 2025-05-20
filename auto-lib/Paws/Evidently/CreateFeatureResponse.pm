
package Paws::Evidently::CreateFeatureResponse;
  use Moose;
  has Feature => (is => 'ro', isa => 'Paws::Evidently::Feature', traits => ['NameInRequest'], request_name => 'feature');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateFeatureResponse

=head1 ATTRIBUTES


=head2 Feature => L<Paws::Evidently::Feature>

A structure that contains information about the new feature.


=head2 _request_id => Str


=cut

