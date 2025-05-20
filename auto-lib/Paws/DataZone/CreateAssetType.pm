
package Paws::DataZone::CreateAssetType;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has FormsInput => (is => 'ro', isa => 'Paws::DataZone::FormsInputMap', traits => ['NameInRequest'], request_name => 'formsInput', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssetType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/asset-types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateAssetTypeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateAssetType - Arguments for method CreateAssetType on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssetType on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateAssetType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssetType.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateAssetTypeOutput = $datazone->CreateAssetType(
      DomainIdentifier => 'MyDomainId',
      FormsInput       => {
        'MyFormName' => {
          TypeIdentifier => 'MyFormTypeIdentifier',    # min: 1, max: 385
          TypeRevision   => 'MyRevision',              # min: 1, max: 64
          Required       => 1,                         # OPTIONAL
        },    # key: min: 1, max: 128
      },
      Name                    => 'MyTypeName',
      OwningProjectIdentifier => 'MyProjectId',
      Description             => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $CreatedAt       = $CreateAssetTypeOutput->CreatedAt;
    my $CreatedBy       = $CreateAssetTypeOutput->CreatedBy;
    my $Description     = $CreateAssetTypeOutput->Description;
    my $DomainId        = $CreateAssetTypeOutput->DomainId;
    my $FormsOutput     = $CreateAssetTypeOutput->FormsOutput;
    my $Name            = $CreateAssetTypeOutput->Name;
    my $OriginDomainId  = $CreateAssetTypeOutput->OriginDomainId;
    my $OriginProjectId = $CreateAssetTypeOutput->OriginProjectId;
    my $OwningProjectId = $CreateAssetTypeOutput->OwningProjectId;
    my $Revision        = $CreateAssetTypeOutput->Revision;
    my $UpdatedAt       = $CreateAssetTypeOutput->UpdatedAt;
    my $UpdatedBy       = $CreateAssetTypeOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::CreateAssetTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateAssetType>

=head1 ATTRIBUTES


=head2 Description => Str

The descripton of the custom asset type.



=head2 B<REQUIRED> DomainIdentifier => Str

The unique identifier of the Amazon DataZone domain where the custom
asset type is being created.



=head2 B<REQUIRED> FormsInput => L<Paws::DataZone::FormsInputMap>

The metadata forms that are to be attached to the custom asset type.



=head2 B<REQUIRED> Name => Str

The name of the custom asset type.



=head2 B<REQUIRED> OwningProjectIdentifier => Str

The identifier of the Amazon DataZone project that is to own the custom
asset type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssetType in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

