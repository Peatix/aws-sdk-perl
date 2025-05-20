
package Paws::DataZone::GetDataSource;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetDataSourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDataSource - Arguments for method GetDataSource on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSource on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSource.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetDataSourceOutput = $datazone->GetDataSource(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataSourceId',

    );

    # Results:
    my $AssetFormsOutput    = $GetDataSourceOutput->AssetFormsOutput;
    my $Configuration       = $GetDataSourceOutput->Configuration;
    my $ConnectionId        = $GetDataSourceOutput->ConnectionId;
    my $CreatedAt           = $GetDataSourceOutput->CreatedAt;
    my $Description         = $GetDataSourceOutput->Description;
    my $DomainId            = $GetDataSourceOutput->DomainId;
    my $EnableSetting       = $GetDataSourceOutput->EnableSetting;
    my $EnvironmentId       = $GetDataSourceOutput->EnvironmentId;
    my $ErrorMessage        = $GetDataSourceOutput->ErrorMessage;
    my $Id                  = $GetDataSourceOutput->Id;
    my $LastRunAssetCount   = $GetDataSourceOutput->LastRunAssetCount;
    my $LastRunAt           = $GetDataSourceOutput->LastRunAt;
    my $LastRunErrorMessage = $GetDataSourceOutput->LastRunErrorMessage;
    my $LastRunStatus       = $GetDataSourceOutput->LastRunStatus;
    my $Name                = $GetDataSourceOutput->Name;
    my $ProjectId           = $GetDataSourceOutput->ProjectId;
    my $PublishOnImport     = $GetDataSourceOutput->PublishOnImport;
    my $Recommendation      = $GetDataSourceOutput->Recommendation;
    my $Schedule            = $GetDataSourceOutput->Schedule;
    my $SelfGrantStatus     = $GetDataSourceOutput->SelfGrantStatus;
    my $Status              = $GetDataSourceOutput->Status;
    my $Type                = $GetDataSourceOutput->Type;
    my $UpdatedAt           = $GetDataSourceOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::GetDataSourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the data source exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the Amazon DataZone data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSource in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

