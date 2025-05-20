
package Paws::DataZone::GetDataSourceRun;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSourceRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-source-runs/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetDataSourceRunOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDataSourceRun - Arguments for method GetDataSourceRun on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSourceRun on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetDataSourceRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSourceRun.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetDataSourceRunOutput = $datazone->GetDataSourceRun(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataSourceRunId',

    );

    # Results:
    my $CreatedAt = $GetDataSourceRunOutput->CreatedAt;
    my $DataSourceConfigurationSnapshot =
      $GetDataSourceRunOutput->DataSourceConfigurationSnapshot;
    my $DataSourceId   = $GetDataSourceRunOutput->DataSourceId;
    my $DomainId       = $GetDataSourceRunOutput->DomainId;
    my $ErrorMessage   = $GetDataSourceRunOutput->ErrorMessage;
    my $Id             = $GetDataSourceRunOutput->Id;
    my $LineageSummary = $GetDataSourceRunOutput->LineageSummary;
    my $ProjectId      = $GetDataSourceRunOutput->ProjectId;
    my $RunStatisticsForAssets =
      $GetDataSourceRunOutput->RunStatisticsForAssets;
    my $StartedAt = $GetDataSourceRunOutput->StartedAt;
    my $Status    = $GetDataSourceRunOutput->Status;
    my $StoppedAt = $GetDataSourceRunOutput->StoppedAt;
    my $Type      = $GetDataSourceRunOutput->Type;
    my $UpdatedAt = $GetDataSourceRunOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::GetDataSourceRunOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetDataSourceRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain in which this data source run was performed.



=head2 B<REQUIRED> Identifier => Str

The ID of the data source run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSourceRun in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

