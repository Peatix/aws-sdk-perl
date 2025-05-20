
package Paws::MailManager::CreateAddressListImportJob;
  use Moose;
  has AddressListId => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has ImportDataFormat => (is => 'ro', isa => 'Paws::MailManager::ImportDataFormat', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAddressListImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::CreateAddressListImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddressListImportJob - Arguments for method CreateAddressListImportJob on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAddressListImportJob on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method CreateAddressListImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAddressListImportJob.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $CreateAddressListImportJobResponse =
      $mail -manager->CreateAddressListImportJob(
      AddressListId    => 'MyAddressListId',
      ImportDataFormat => {
        ImportDataType => 'CSV',    # values: CSV, JSON

      },
      Name        => 'MyJobName',
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
      );

    # Results:
    my $JobId        = $CreateAddressListImportJobResponse->JobId;
    my $PreSignedUrl = $CreateAddressListImportJobResponse->PreSignedUrl;

    # Returns a L<Paws::MailManager::CreateAddressListImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/CreateAddressListImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressListId => Str

The unique identifier of the address list for importing addresses to.



=head2 ClientToken => Str

A unique token that Amazon SES uses to recognize subsequent retries of
the same request.



=head2 B<REQUIRED> ImportDataFormat => L<Paws::MailManager::ImportDataFormat>

The format of the input for an import job.



=head2 B<REQUIRED> Name => Str

A user-friendly name for the import job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAddressListImportJob in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

