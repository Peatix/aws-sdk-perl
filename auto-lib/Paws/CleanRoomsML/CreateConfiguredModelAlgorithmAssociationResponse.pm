
package Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociationResponse;
  use Moose;
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association.


=head2 _request_id => Str


=cut

