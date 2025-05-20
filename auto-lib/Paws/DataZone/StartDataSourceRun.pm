
package Paws::DataZone::StartDataSourceRun;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataSourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceIdentifier', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataSourceRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::StartDataSourceRunOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::StartDataSourceRun - Arguments for method StartDataSourceRun on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataSourceRun on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method StartDataSourceRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataSourceRun.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $StartDataSourceRunOutput = $datazone->StartDataSourceRun(
      DataSourceIdentifier => 'MyDataSourceId',
      DomainIdentifier     => 'MyDomainId',
      ClientToken          => 'MyString',         # OPTIONAL
    );

    # Results:
    my $CreatedAt = $StartDataSourceRunOutput->CreatedAt;
    my $DataSourceConfigurationSnapshot =
      $StartDataSourceRunOutput->DataSourceConfigurationSnapshot;
    my $DataSourceId = $StartDataSourceRunOutput->DataSourceId;
    my $DomainId     = $StartDataSourceRunOutput->DomainId;
    my $ErrorMessage = $StartDataSourceRunOutput->ErrorMessage;
    my $Id           = $StartDataSourceRunOutput->Id;
    my $ProjectId    = $StartDataSourceRunOutput->ProjectId;
    my $RunStatisticsForAssets =
      $StartDataSourceRunOutput->RunStatisticsForAssets;
    my $StartedAt = $StartDataSourceRunOutput->StartedAt;
    my $Status    = $StartDataSourceRunOutput->Status;
    my $StoppedAt = $StartDataSourceRunOutput->StoppedAt;
    my $Type      = $StartDataSourceRunOutput->Type;
    my $UpdatedAt = $StartDataSourceRunOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::StartDataSourceRunOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/StartDataSourceRun>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DataSourceIdentifier => Str

The identifier of the data source.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which to start a data
source run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataSourceRun in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

