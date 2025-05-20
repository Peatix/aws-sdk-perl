
package Paws::DataZone::GetAssetFilter;
  use Moose;
  has AssetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetIdentifier', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssetFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetAssetFilterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetAssetFilter - Arguments for method GetAssetFilter on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssetFilter on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetAssetFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssetFilter.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetAssetFilterOutput = $datazone->GetAssetFilter(
      AssetIdentifier  => 'MyAssetId',
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyFilterId',

    );

    # Results:
    my $AssetId              = $GetAssetFilterOutput->AssetId;
    my $Configuration        = $GetAssetFilterOutput->Configuration;
    my $CreatedAt            = $GetAssetFilterOutput->CreatedAt;
    my $Description          = $GetAssetFilterOutput->Description;
    my $DomainId             = $GetAssetFilterOutput->DomainId;
    my $EffectiveColumnNames = $GetAssetFilterOutput->EffectiveColumnNames;
    my $EffectiveRowFilter   = $GetAssetFilterOutput->EffectiveRowFilter;
    my $ErrorMessage         = $GetAssetFilterOutput->ErrorMessage;
    my $Id                   = $GetAssetFilterOutput->Id;
    my $Name                 = $GetAssetFilterOutput->Name;
    my $Status               = $GetAssetFilterOutput->Status;

    # Returns a L<Paws::DataZone::GetAssetFilterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetAssetFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIdentifier => Str

The ID of the data asset.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to get an asset filter.



=head2 B<REQUIRED> Identifier => Str

The ID of the asset filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssetFilter in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

