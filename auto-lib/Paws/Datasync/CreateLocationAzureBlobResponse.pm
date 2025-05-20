
package Paws::Datasync::CreateLocationAzureBlobResponse;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationAzureBlobResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

The ARN of the Azure Blob Storage transfer location that you created.


=head2 _request_id => Str


=cut

1;