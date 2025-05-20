
package Paws::MailManager::CreateAddressListImportJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has PreSignedUrl => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddressListImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the created import job.


=head2 B<REQUIRED> PreSignedUrl => Str

The pre-signed URL target for uploading the input file.


=head2 _request_id => Str


=cut

1;