
package Paws::BackupSearch::GetSearchJob;
  use Moose;
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SearchJobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSearchJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-jobs/{SearchJobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::GetSearchJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::GetSearchJob - Arguments for method GetSearchJob on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSearchJob on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method GetSearchJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSearchJob.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $GetSearchJobOutput = $backup -search->GetSearchJob(
      SearchJobIdentifier => 'MyGenericId',

    );

    # Results:
    my $CompletionTime        = $GetSearchJobOutput->CompletionTime;
    my $CreationTime          = $GetSearchJobOutput->CreationTime;
    my $CurrentSearchProgress = $GetSearchJobOutput->CurrentSearchProgress;
    my $EncryptionKeyArn      = $GetSearchJobOutput->EncryptionKeyArn;
    my $ItemFilters           = $GetSearchJobOutput->ItemFilters;
    my $Name                  = $GetSearchJobOutput->Name;
    my $SearchJobArn          = $GetSearchJobOutput->SearchJobArn;
    my $SearchJobIdentifier   = $GetSearchJobOutput->SearchJobIdentifier;
    my $SearchScope           = $GetSearchJobOutput->SearchScope;
    my $SearchScopeSummary    = $GetSearchJobOutput->SearchScopeSummary;
    my $Status                = $GetSearchJobOutput->Status;
    my $StatusMessage         = $GetSearchJobOutput->StatusMessage;

    # Returns a L<Paws::BackupSearch::GetSearchJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/GetSearchJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SearchJobIdentifier => Str

Required unique string that specifies the search job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSearchJob in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

