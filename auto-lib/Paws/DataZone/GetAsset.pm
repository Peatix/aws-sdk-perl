
package Paws::DataZone::GetAsset;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetAssetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetAsset - Arguments for method GetAsset on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAsset on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAsset.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetAssetOutput = $datazone->GetAsset(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyAssetIdentifier',
      Revision         => 'MyRevision',          # OPTIONAL
    );

    # Results:
    my $CreatedAt              = $GetAssetOutput->CreatedAt;
    my $CreatedBy              = $GetAssetOutput->CreatedBy;
    my $Description            = $GetAssetOutput->Description;
    my $DomainId               = $GetAssetOutput->DomainId;
    my $ExternalIdentifier     = $GetAssetOutput->ExternalIdentifier;
    my $FirstRevisionCreatedAt = $GetAssetOutput->FirstRevisionCreatedAt;
    my $FirstRevisionCreatedBy = $GetAssetOutput->FirstRevisionCreatedBy;
    my $FormsOutput            = $GetAssetOutput->FormsOutput;
    my $GlossaryTerms          = $GetAssetOutput->GlossaryTerms;
    my $Id                     = $GetAssetOutput->Id;
    my $LatestTimeSeriesDataPointFormsOutput =
      $GetAssetOutput->LatestTimeSeriesDataPointFormsOutput;
    my $Listing             = $GetAssetOutput->Listing;
    my $Name                = $GetAssetOutput->Name;
    my $OwningProjectId     = $GetAssetOutput->OwningProjectId;
    my $ReadOnlyFormsOutput = $GetAssetOutput->ReadOnlyFormsOutput;
    my $Revision            = $GetAssetOutput->Revision;
    my $TypeIdentifier      = $GetAssetOutput->TypeIdentifier;
    my $TypeRevision        = $GetAssetOutput->TypeRevision;

    # Returns a L<Paws::DataZone::GetAssetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain to which the asset belongs.



=head2 B<REQUIRED> Identifier => Str

The ID of the Amazon DataZone asset.



=head2 Revision => Str

The revision of the Amazon DataZone asset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAsset in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

