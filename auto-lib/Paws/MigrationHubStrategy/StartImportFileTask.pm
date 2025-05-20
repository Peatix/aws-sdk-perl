
package Paws::MigrationHubStrategy::StartImportFileTask;
  use Moose;
  has DataSourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceType');
  has GroupId => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::Group]', traits => ['NameInRequest'], request_name => 'groupId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has S3bucketForReportData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3bucketForReportData');
  has S3key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3key', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImportFileTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-import-file-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::StartImportFileTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::StartImportFileTask - Arguments for method StartImportFileTask on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImportFileTask on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method StartImportFileTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImportFileTask.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $StartImportFileTaskResponse =
      $migrationhub -strategy->StartImportFileTask(
      Name           => 'MyStartImportFileTaskRequestNameString',
      S3Bucket       => 'MyimportS3Bucket',
      S3key          => 'MyString',
      DataSourceType => 'ApplicationDiscoveryService',              # OPTIONAL
      GroupId        => [
        {
          Name =>
            'ExternalId',    # values: ExternalId, ExternalSourceType; OPTIONAL
          Value => 'MyString',    # max: 1024
        },
        ...
      ],    # OPTIONAL
      S3bucketForReportData =>
        'MyStartImportFileTaskRequestS3bucketForReportDataString',    # OPTIONAL
      );

    # Results:
    my $Id = $StartImportFileTaskResponse->Id;

  # Returns a L<Paws::MigrationHubStrategy::StartImportFileTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/StartImportFileTask>

=head1 ATTRIBUTES


=head2 DataSourceType => Str

Specifies the source that the servers are coming from. By default,
Strategy Recommendations assumes that the servers specified in the
import file are available in AWS Application Discovery Service.

Valid values are: C<"ApplicationDiscoveryService">, C<"MPA">, C<"Import">, C<"StrategyRecommendationsApplicationDataCollector">

=head2 GroupId => ArrayRef[L<Paws::MigrationHubStrategy::Group>]

Groups the resources in the import file together with a unique name.
This ID can be as filter in C<ListApplicationComponents> and
C<ListServers>.



=head2 B<REQUIRED> Name => Str

A descriptive name for the request.



=head2 B<REQUIRED> S3Bucket => Str

The S3 bucket where the import file is located. The bucket name is
required to begin with C<migrationhub-strategy->.



=head2 S3bucketForReportData => Str

The S3 bucket where Strategy Recommendations uploads import results.
The bucket name is required to begin with migrationhub-strategy-.



=head2 B<REQUIRED> S3key => Str

The Amazon S3 key name of the import file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImportFileTask in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

