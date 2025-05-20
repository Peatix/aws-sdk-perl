
package Paws::MailManager::GetAddressListImportJobResponse;
  use Moose;
  has AddressListId => (is => 'ro', isa => 'Str', required => 1);
  has CompletedTimestamp => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has Error => (is => 'ro', isa => 'Str');
  has FailedItemsCount => (is => 'ro', isa => 'Int');
  has ImportDataFormat => (is => 'ro', isa => 'Paws::MailManager::ImportDataFormat', required => 1);
  has ImportedItemsCount => (is => 'ro', isa => 'Int');
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PreSignedUrl => (is => 'ro', isa => 'Str', required => 1);
  has StartTimestamp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetAddressListImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressListId => Str

The unique identifier of the address list the import job was created
for.


=head2 CompletedTimestamp => Str

The timestamp of when the import job was completed.


=head2 B<REQUIRED> CreatedTimestamp => Str

The timestamp of when the import job was created.


=head2 Error => Str

The reason for failure of an import job.


=head2 FailedItemsCount => Int

The number of input addresses that failed to be imported into the
address list.


=head2 B<REQUIRED> ImportDataFormat => L<Paws::MailManager::ImportDataFormat>

The format of the input for an import job.


=head2 ImportedItemsCount => Int

The number of input addresses successfully imported into the address
list.


=head2 B<REQUIRED> JobId => Str

The identifier of the import job.


=head2 B<REQUIRED> Name => Str

A user-friendly name for the import job.


=head2 B<REQUIRED> PreSignedUrl => Str

The pre-signed URL target for uploading the input file.


=head2 StartTimestamp => Str

The timestamp of when the import job was started.


=head2 B<REQUIRED> Status => Str

The status of the import job.

Valid values are: C<"CREATED">, C<"PROCESSING">, C<"COMPLETED">, C<"FAILED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;