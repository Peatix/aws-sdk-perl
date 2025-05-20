
package Paws::AmplifyUIBuilder::GetMetadataResponse;
  use Moose;
  has Features => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FeaturesMap', traits => ['NameInRequest'], request_name => 'features', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::GetMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Features => L<Paws::AmplifyUIBuilder::FeaturesMap>

Represents the configuration settings for the features metadata.


=head2 _request_id => Str


=cut

