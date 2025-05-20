
package Paws::PcaConnectorAd::CreateDirectoryRegistrationResponse;
  use Moose;
  has DirectoryRegistrationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::CreateDirectoryRegistrationResponse

=head1 ATTRIBUTES


=head2 DirectoryRegistrationArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateDirectoryRegistration
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html).


=head2 _request_id => Str


=cut

