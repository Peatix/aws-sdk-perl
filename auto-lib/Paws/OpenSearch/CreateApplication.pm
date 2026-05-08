
package Paws::OpenSearch::CreateApplication;
  use Moose;
  has AppConfigs => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AppConfig]', traits => ['NameInRequest'], request_name => 'appConfigs');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has IamIdentityCenterOptions => (is => 'ro', isa => 'Paws::OpenSearch::IamIdentityCenterOptionsInput', traits => ['NameInRequest'], request_name => 'iamIdentityCenterOptions');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::Tag]', traits => ['NameInRequest'], request_name => 'tagList');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/application');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreateApplication - Arguments for method CreateApplication on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $CreateApplicationResponse = $es->CreateApplication(
      Name       => 'MyApplicationName',
      AppConfigs => [
        {
          Key => 'opensearchDashboards.dashboardAdmin.users'
          , # values: opensearchDashboards.dashboardAdmin.users, opensearchDashboards.dashboardAdmin.groups; OPTIONAL
          Value => 'MyAppConfigValue',    # min: 1, max: 4096; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      DataSources => [
        {
          DataSourceArn         => 'MyARN',    # min: 20, max: 2048; OPTIONAL
          DataSourceDescription =>
            'MyDataSourceDescription',         # max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IamIdentityCenterOptions => {
        Enabled                      => 1,        # OPTIONAL
        IamIdentityCenterInstanceArn => 'MyARN',  # min: 20, max: 2048; OPTIONAL
        IamRoleForIdentityCenterApplicationArn =>
          'MyRoleArn',                            # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      TagList => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppConfigs  = $CreateApplicationResponse->AppConfigs;
    my $Arn         = $CreateApplicationResponse->Arn;
    my $CreatedAt   = $CreateApplicationResponse->CreatedAt;
    my $DataSources = $CreateApplicationResponse->DataSources;
    my $IamIdentityCenterOptions =
      $CreateApplicationResponse->IamIdentityCenterOptions;
    my $Id      = $CreateApplicationResponse->Id;
    my $Name    = $CreateApplicationResponse->Name;
    my $TagList = $CreateApplicationResponse->TagList;

    # Returns a L<Paws::OpenSearch::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]

Configuration settings for the OpenSearch application, including
administrative options.



=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]

The data sources to link to the OpenSearch application.



=head2 IamIdentityCenterOptions => L<Paws::OpenSearch::IamIdentityCenterOptionsInput>

Configuration settings for integrating Amazon Web Services IAM Identity
Center with the OpenSearch application.



=head2 B<REQUIRED> Name => Str

The unique name of the OpenSearch application. Names must be unique
within an Amazon Web Services Region for each account.



=head2 TagList => ArrayRef[L<Paws::OpenSearch::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

