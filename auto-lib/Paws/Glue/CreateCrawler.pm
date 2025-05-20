
package Paws::Glue::CreateCrawler;
  use Moose;
  has Classifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Configuration => (is => 'ro', isa => 'Str');
  has CrawlerSecurityConfiguration => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LakeFormationConfiguration => (is => 'ro', isa => 'Paws::Glue::LakeFormationConfiguration');
  has LineageConfiguration => (is => 'ro', isa => 'Paws::Glue::LineageConfiguration');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RecrawlPolicy => (is => 'ro', isa => 'Paws::Glue::RecrawlPolicy');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Str');
  has SchemaChangePolicy => (is => 'ro', isa => 'Paws::Glue::SchemaChangePolicy');
  has TablePrefix => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has Targets => (is => 'ro', isa => 'Paws::Glue::CrawlerTargets', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCrawler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateCrawlerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateCrawler - Arguments for method CreateCrawler on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCrawler on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateCrawler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCrawler.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateCrawlerResponse = $glue->CreateCrawler(
      Name    => 'MyNameString',
      Role    => 'MyRole',
      Targets => {
        CatalogTargets => [
          {
            DatabaseName => 'MyNameString',    # min: 1, max: 255
            Tables       => [
              'MyNameString', ...              # min: 1, max: 255
            ],    # min: 1
            ConnectionName   => 'MyConnectionName',    # OPTIONAL
            DlqEventQueueArn => 'MyEventQueueArn',     # OPTIONAL
            EventQueueArn    => 'MyEventQueueArn',     # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        DeltaTargets => [
          {
            ConnectionName         => 'MyConnectionName',    # OPTIONAL
            CreateNativeDeltaTable => 1,                     # OPTIONAL
            DeltaTables            => [ 'MyPath', ... ],     # OPTIONAL
            WriteManifest          => 1,                     # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        DynamoDBTargets => [
          {
            Path     => 'MyPath',
            ScanAll  => 1,          # OPTIONAL
            ScanRate => 1,          # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        HudiTargets => [
          {
            ConnectionName        => 'MyConnectionName',    # OPTIONAL
            Exclusions            => [ 'MyPath', ... ],     # OPTIONAL
            MaximumTraversalDepth => 1,                     # OPTIONAL
            Paths                 => [ 'MyPath', ... ],     # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        IcebergTargets => [
          {
            ConnectionName        => 'MyConnectionName',    # OPTIONAL
            Exclusions            => [ 'MyPath', ... ],     # OPTIONAL
            MaximumTraversalDepth => 1,                     # OPTIONAL
            Paths                 => [ 'MyPath', ... ],     # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        JdbcTargets => [
          {
            ConnectionName           => 'MyConnectionName',    # OPTIONAL
            EnableAdditionalMetadata => [
              'COMMENTS', ...    # values: COMMENTS, RAWTYPES
            ],    # OPTIONAL
            Exclusions => [ 'MyPath', ... ],    # OPTIONAL
            Path       => 'MyPath',
          },
          ...
        ],    # OPTIONAL
        MongoDBTargets => [
          {
            ConnectionName => 'MyConnectionName',    # OPTIONAL
            Path           => 'MyPath',
            ScanAll        => 1,                     # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        S3Targets => [
          {
            ConnectionName   => 'MyConnectionName',    # OPTIONAL
            DlqEventQueueArn => 'MyEventQueueArn',     # OPTIONAL
            EventQueueArn    => 'MyEventQueueArn',     # OPTIONAL
            Exclusions       => [ 'MyPath', ... ],     # OPTIONAL
            Path             => 'MyPath',
            SampleSize       => 1,                     # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },
      Classifiers => [
        'MyNameString', ...    # min: 1, max: 255
      ],    # OPTIONAL
      Configuration                => 'MyCrawlerConfiguration',    # OPTIONAL
      CrawlerSecurityConfiguration =>
        'MyCrawlerSecurityConfiguration',                          # OPTIONAL
      DatabaseName               => 'MyDatabaseName',              # OPTIONAL
      Description                => 'MyDescriptionString',         # OPTIONAL
      LakeFormationConfiguration => {
        AccountId                   => 'MyAccountId',    # max: 12; OPTIONAL
        UseLakeFormationCredentials => 1,                # OPTIONAL
      },    # OPTIONAL
      LineageConfiguration => {
        CrawlerLineageSettings => 'ENABLE',  # values: ENABLE, DISABLE; OPTIONAL
      },    # OPTIONAL
      RecrawlPolicy => {
        RecrawlBehavior => 'CRAWL_EVERYTHING'
        , # values: CRAWL_EVERYTHING, CRAWL_NEW_FOLDERS_ONLY, CRAWL_EVENT_MODE; OPTIONAL
      },    # OPTIONAL
      Schedule           => 'MyCronExpression',    # OPTIONAL
      SchemaChangePolicy => {
        DeleteBehavior => 'LOG'
        ,   # values: LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE; OPTIONAL
        UpdateBehavior => 'LOG',    # values: LOG, UPDATE_IN_DATABASE; OPTIONAL
      },    # OPTIONAL
      TablePrefix => 'MyTablePrefix',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateCrawler>

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[Str|Undef]

A list of custom classifiers that the user has registered. By default,
all built-in classifiers are included in a crawl, but these custom
classifiers always override the default classifiers for a given
classification.



=head2 Configuration => Str

Crawler configuration information. This versioned JSON string allows
users to specify aspects of a crawler's behavior. For more information,
see Setting crawler configuration options
(https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).



=head2 CrawlerSecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure to be used by this
crawler.



=head2 DatabaseName => Str

The Glue database where results are written, such as:
C<arn:aws:daylight:us-east-1::database/sometable/*>.



=head2 Description => Str

A description of the new crawler.



=head2 LakeFormationConfiguration => L<Paws::Glue::LakeFormationConfiguration>

Specifies Lake Formation configuration settings for the crawler.



=head2 LineageConfiguration => L<Paws::Glue::LineageConfiguration>

Specifies data lineage configuration settings for the crawler.



=head2 B<REQUIRED> Name => Str

Name of the new crawler.



=head2 RecrawlPolicy => L<Paws::Glue::RecrawlPolicy>

A policy that specifies whether to crawl the entire dataset again, or
to crawl only folders that were added since the last crawler run.



=head2 B<REQUIRED> Role => Str

The IAM role or Amazon Resource Name (ARN) of an IAM role used by the
new crawler to access customer resources.



=head2 Schedule => Str

A C<cron> expression used to specify the schedule (see Time-Based
Schedules for Jobs and Crawlers
(https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html).
For example, to run something every day at 12:15 UTC, you would
specify: C<cron(15 12 * * ? *)>.



=head2 SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>

The policy for the crawler's update and deletion behavior.



=head2 TablePrefix => Str

The table prefix used for catalog tables that are created.



=head2 Tags => L<Paws::Glue::TagsMap>

The tags to use with this crawler request. You may use tags to limit
access to the crawler. For more information about tags in Glue, see
Amazon Web Services Tags in Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in the
developer guide.



=head2 B<REQUIRED> Targets => L<Paws::Glue::CrawlerTargets>

A list of collection of targets to crawl.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCrawler in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

