
package Paws::BackupSearch::GetSearchResultExportJob;
  use Moose;
  has ExportJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExportJobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSearchResultExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/export-search-jobs/{ExportJobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::GetSearchResultExportJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::GetSearchResultExportJob - Arguments for method GetSearchResultExportJob on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSearchResultExportJob on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method GetSearchResultExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSearchResultExportJob.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $GetSearchResultExportJobOutput =
      $backup -search->GetSearchResultExportJob(
      ExportJobIdentifier => 'MyGenericId',

      );

    # Results:
    my $CompletionTime = $GetSearchResultExportJobOutput->CompletionTime;
    my $CreationTime   = $GetSearchResultExportJobOutput->CreationTime;
    my $ExportJobArn   = $GetSearchResultExportJobOutput->ExportJobArn;
    my $ExportJobIdentifier =
      $GetSearchResultExportJobOutput->ExportJobIdentifier;
    my $ExportSpecification =
      $GetSearchResultExportJobOutput->ExportSpecification;
    my $SearchJobArn  = $GetSearchResultExportJobOutput->SearchJobArn;
    my $Status        = $GetSearchResultExportJobOutput->Status;
    my $StatusMessage = $GetSearchResultExportJobOutput->StatusMessage;

    # Returns a L<Paws::BackupSearch::GetSearchResultExportJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/GetSearchResultExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobIdentifier => Str

This is the unique string that identifies a specific export job.

Required for this operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSearchResultExportJob in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

