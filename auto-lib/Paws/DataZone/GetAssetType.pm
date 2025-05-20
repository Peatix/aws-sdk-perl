
package Paws::DataZone::GetAssetType;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssetType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/asset-types/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetAssetTypeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetAssetType - Arguments for method GetAssetType on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssetType on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetAssetType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssetType.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetAssetTypeOutput = $datazone->GetAssetType(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyAssetTypeIdentifier',
      Revision         => 'MyRevision',              # OPTIONAL
    );

    # Results:
    my $CreatedAt       = $GetAssetTypeOutput->CreatedAt;
    my $CreatedBy       = $GetAssetTypeOutput->CreatedBy;
    my $Description     = $GetAssetTypeOutput->Description;
    my $DomainId        = $GetAssetTypeOutput->DomainId;
    my $FormsOutput     = $GetAssetTypeOutput->FormsOutput;
    my $Name            = $GetAssetTypeOutput->Name;
    my $OriginDomainId  = $GetAssetTypeOutput->OriginDomainId;
    my $OriginProjectId = $GetAssetTypeOutput->OriginProjectId;
    my $OwningProjectId = $GetAssetTypeOutput->OwningProjectId;
    my $Revision        = $GetAssetTypeOutput->Revision;
    my $UpdatedAt       = $GetAssetTypeOutput->UpdatedAt;
    my $UpdatedBy       = $GetAssetTypeOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::GetAssetTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetAssetType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the asset type exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the asset type.



=head2 Revision => Str

The revision of the asset type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssetType in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

