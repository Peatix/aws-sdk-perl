
package Paws::CleanRoomsML::CreateConfiguredModelAlgorithmResponse;
  use Moose;
  has ConfiguredModelAlgorithmArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateConfiguredModelAlgorithmResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm.


=head2 _request_id => Str


=cut

