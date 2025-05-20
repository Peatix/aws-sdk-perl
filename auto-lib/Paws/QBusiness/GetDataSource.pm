
package Paws::QBusiness::GetDataSource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetDataSource - Arguments for method GetDataSource on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSource on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSource.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetDataSourceResponse = $qbusiness->GetDataSource(
      ApplicationId => 'MyApplicationId',
      DataSourceId  => 'MyDataSourceId',
      IndexId       => 'MyIndexId',

    );

    # Results:
    my $ApplicationId = $GetDataSourceResponse->ApplicationId;
    my $Configuration = $GetDataSourceResponse->Configuration;
    my $CreatedAt     = $GetDataSourceResponse->CreatedAt;
    my $DataSourceArn = $GetDataSourceResponse->DataSourceArn;
    my $DataSourceId  = $GetDataSourceResponse->DataSourceId;
    my $Description   = $GetDataSourceResponse->Description;
    my $DisplayName   = $GetDataSourceResponse->DisplayName;
    my $DocumentEnrichmentConfiguration =
      $GetDataSourceResponse->DocumentEnrichmentConfiguration;
    my $Error   = $GetDataSourceResponse->Error;
    my $IndexId = $GetDataSourceResponse->IndexId;
    my $MediaExtractionConfiguration =
      $GetDataSourceResponse->MediaExtractionConfiguration;
    my $RoleArn          = $GetDataSourceResponse->RoleArn;
    my $Status           = $GetDataSourceResponse->Status;
    my $SyncSchedule     = $GetDataSourceResponse->SyncSchedule;
    my $Type             = $GetDataSourceResponse->Type;
    my $UpdatedAt        = $GetDataSourceResponse->UpdatedAt;
    my $VpcConfiguration = $GetDataSourceResponse->VpcConfiguration;

    # Returns a L<Paws::QBusiness::GetDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application.



=head2 B<REQUIRED> DataSourceId => Str

The identifier of the data source connector.



=head2 B<REQUIRED> IndexId => Str

The identfier of the index used with the data source connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSource in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

