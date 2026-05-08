
package Paws::OpenSearch::UpdateApplication;
  use Moose;
  has AppConfigs => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AppConfig]', traits => ['NameInRequest'], request_name => 'appConfigs');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/application/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpdateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateApplication - Arguments for method UpdateApplication on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpdateApplicationResponse = $es->UpdateApplication(
      Id         => 'MyId',
      AppConfigs => [
        {
          Key => 'opensearchDashboards.dashboardAdmin.users'
          , # values: opensearchDashboards.dashboardAdmin.users, opensearchDashboards.dashboardAdmin.groups; OPTIONAL
          Value => 'MyAppConfigValue',    # min: 1, max: 4096; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DataSources => [
        {
          DataSourceArn         => 'MyARN',    # min: 20, max: 2048; OPTIONAL
          DataSourceDescription =>
            'MyDataSourceDescription',         # max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppConfigs  = $UpdateApplicationResponse->AppConfigs;
    my $Arn         = $UpdateApplicationResponse->Arn;
    my $CreatedAt   = $UpdateApplicationResponse->CreatedAt;
    my $DataSources = $UpdateApplicationResponse->DataSources;
    my $IamIdentityCenterOptions =
      $UpdateApplicationResponse->IamIdentityCenterOptions;
    my $Id            = $UpdateApplicationResponse->Id;
    my $LastUpdatedAt = $UpdateApplicationResponse->LastUpdatedAt;
    my $Name          = $UpdateApplicationResponse->Name;

    # Returns a L<Paws::OpenSearch::UpdateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]

The configuration settings to modify for the OpenSearch application.



=head2 DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]

The data sources to associate with the OpenSearch application.



=head2 B<REQUIRED> Id => Str

The unique identifier for the OpenSearch application to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

