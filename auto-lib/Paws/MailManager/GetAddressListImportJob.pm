
package Paws::MailManager::GetAddressListImportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAddressListImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::GetAddressListImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetAddressListImportJob - Arguments for method GetAddressListImportJob on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAddressListImportJob on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method GetAddressListImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAddressListImportJob.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $GetAddressListImportJobResponse =
      $mail -manager->GetAddressListImportJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $AddressListId = $GetAddressListImportJobResponse->AddressListId;
    my $CompletedTimestamp =
      $GetAddressListImportJobResponse->CompletedTimestamp;
    my $CreatedTimestamp = $GetAddressListImportJobResponse->CreatedTimestamp;
    my $Error            = $GetAddressListImportJobResponse->Error;
    my $FailedItemsCount = $GetAddressListImportJobResponse->FailedItemsCount;
    my $ImportDataFormat = $GetAddressListImportJobResponse->ImportDataFormat;
    my $ImportedItemsCount =
      $GetAddressListImportJobResponse->ImportedItemsCount;
    my $JobId          = $GetAddressListImportJobResponse->JobId;
    my $Name           = $GetAddressListImportJobResponse->Name;
    my $PreSignedUrl   = $GetAddressListImportJobResponse->PreSignedUrl;
    my $StartTimestamp = $GetAddressListImportJobResponse->StartTimestamp;
    my $Status         = $GetAddressListImportJobResponse->Status;

    # Returns a L<Paws::MailManager::GetAddressListImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/GetAddressListImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the import job that needs to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAddressListImportJob in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

