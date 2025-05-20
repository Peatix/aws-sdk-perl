
package Paws::MailManager::GetArchiveExport;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetArchiveExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::GetArchiveExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveExport - Arguments for method GetArchiveExport on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetArchiveExport on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method GetArchiveExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetArchiveExport.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $GetArchiveExportResponse = $mail -manager->GetArchiveExport(
      ExportId => 'MyExportId',

    );

    # Results:
    my $ArchiveId = $GetArchiveExportResponse->ArchiveId;
    my $ExportDestinationConfiguration =
      $GetArchiveExportResponse->ExportDestinationConfiguration;
    my $Filters       = $GetArchiveExportResponse->Filters;
    my $FromTimestamp = $GetArchiveExportResponse->FromTimestamp;
    my $MaxResults    = $GetArchiveExportResponse->MaxResults;
    my $Status        = $GetArchiveExportResponse->Status;
    my $ToTimestamp   = $GetArchiveExportResponse->ToTimestamp;

    # Returns a L<Paws::MailManager::GetArchiveExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/GetArchiveExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The identifier of the export job to get details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetArchiveExport in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

