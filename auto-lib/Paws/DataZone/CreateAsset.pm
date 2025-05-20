
package Paws::DataZone::CreateAsset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has ExternalIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'externalIdentifier');
  has FormsInput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormInput]', traits => ['NameInRequest'], request_name => 'formsInput');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier', required => 1);
  has PredictionConfiguration => (is => 'ro', isa => 'Paws::DataZone::PredictionConfiguration', traits => ['NameInRequest'], request_name => 'predictionConfiguration');
  has TypeIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeIdentifier', required => 1);
  has TypeRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeRevision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateAssetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateAsset - Arguments for method CreateAsset on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAsset on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAsset.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateAssetOutput = $datazone->CreateAsset(
      DomainIdentifier        => 'MyDomainId',
      Name                    => 'MyAssetName',
      OwningProjectIdentifier => 'MyProjectId',
      TypeIdentifier          => 'MyAssetTypeIdentifier',
      ClientToken             => 'MyClientToken',           # OPTIONAL
      Description             => 'MyDescription',           # OPTIONAL
      ExternalIdentifier      => 'MyExternalIdentifier',    # OPTIONAL
      FormsInput              => [
        {
          FormName       => 'MyFormName',                # min: 1, max: 128
          Content        => 'MyFormInputContentString',  # max: 300000; OPTIONAL
          TypeIdentifier => 'MyFormTypeIdentifier', # min: 1, max: 385; OPTIONAL
          TypeRevision   => 'MyRevisionInput',      # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      GlossaryTerms           => [ 'MyGlossaryTermId', ... ],    # OPTIONAL
      PredictionConfiguration => {
        BusinessNameGeneration => {
          Enabled => 1,                                          # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      TypeRevision => 'MyRevision',    # OPTIONAL
    );

    # Results:
    my $CreatedAt              = $CreateAssetOutput->CreatedAt;
    my $CreatedBy              = $CreateAssetOutput->CreatedBy;
    my $Description            = $CreateAssetOutput->Description;
    my $DomainId               = $CreateAssetOutput->DomainId;
    my $ExternalIdentifier     = $CreateAssetOutput->ExternalIdentifier;
    my $FirstRevisionCreatedAt = $CreateAssetOutput->FirstRevisionCreatedAt;
    my $FirstRevisionCreatedBy = $CreateAssetOutput->FirstRevisionCreatedBy;
    my $FormsOutput            = $CreateAssetOutput->FormsOutput;
    my $GlossaryTerms          = $CreateAssetOutput->GlossaryTerms;
    my $Id                     = $CreateAssetOutput->Id;
    my $LatestTimeSeriesDataPointFormsOutput =
      $CreateAssetOutput->LatestTimeSeriesDataPointFormsOutput;
    my $Listing                 = $CreateAssetOutput->Listing;
    my $Name                    = $CreateAssetOutput->Name;
    my $OwningProjectId         = $CreateAssetOutput->OwningProjectId;
    my $PredictionConfiguration = $CreateAssetOutput->PredictionConfiguration;
    my $ReadOnlyFormsOutput     = $CreateAssetOutput->ReadOnlyFormsOutput;
    my $Revision                = $CreateAssetOutput->Revision;
    my $TypeIdentifier          = $CreateAssetOutput->TypeIdentifier;
    my $TypeRevision            = $CreateAssetOutput->TypeRevision;

    # Returns a L<Paws::DataZone::CreateAssetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateAsset>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

Asset description.



=head2 B<REQUIRED> DomainIdentifier => Str

Amazon DataZone domain where the asset is created.



=head2 ExternalIdentifier => Str

The external identifier of the asset.



=head2 FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]

Metadata forms attached to the asset.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

Glossary terms attached to the asset.



=head2 B<REQUIRED> Name => Str

Asset name.



=head2 B<REQUIRED> OwningProjectIdentifier => Str

The unique identifier of the project that owns this asset.



=head2 PredictionConfiguration => L<Paws::DataZone::PredictionConfiguration>

The configuration of the automatically generated business-friendly
metadata for the asset.



=head2 B<REQUIRED> TypeIdentifier => Str

The unique identifier of this asset's type.



=head2 TypeRevision => Str

The revision of this asset's type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAsset in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

