
package Paws::DataZone::UpdateAssetFilter;
  use Moose;
  has AssetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetIdentifier', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::DataZone::AssetFilterConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssetFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateAssetFilterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateAssetFilter - Arguments for method UpdateAssetFilter on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssetFilter on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateAssetFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssetFilter.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateAssetFilterOutput = $datazone->UpdateAssetFilter(
      AssetIdentifier  => 'MyAssetId',
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyFilterId',
      Configuration    => {
        ColumnConfiguration => {
          IncludedColumnNames => [ 'MyString', ... ],    # OPTIONAL
        },    # OPTIONAL
        RowConfiguration => {
          RowFilter => {
            And        => [ <RowFilter>, ... ],    # OPTIONAL
            Expression => {
              EqualTo => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              GreaterThan => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              GreaterThanOrEqualTo => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              In => {
                ColumnName => 'MyString',
                Values     => [ 'MyString', ... ],

              },                                   # OPTIONAL
              IsNotNull => {
                ColumnName => 'MyString',

              },                                   # OPTIONAL
              IsNull => {
                ColumnName => 'MyString',

              },                                   # OPTIONAL
              LessThan => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              LessThanOrEqualTo => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              Like => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              NotEqualTo => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
              NotIn => {
                ColumnName => 'MyString',
                Values     => [ 'MyString', ... ],

              },                                   # OPTIONAL
              NotLike => {
                ColumnName => 'MyString',
                Value      => 'MyString',

              },                                   # OPTIONAL
            },    # OPTIONAL
            Or => [ <RowFilter>, ... ],    # OPTIONAL
          },
          Sensitive => 1,                  # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Name        => 'MyString',         # OPTIONAL
    );

    # Results:
    my $AssetId              = $UpdateAssetFilterOutput->AssetId;
    my $Configuration        = $UpdateAssetFilterOutput->Configuration;
    my $CreatedAt            = $UpdateAssetFilterOutput->CreatedAt;
    my $Description          = $UpdateAssetFilterOutput->Description;
    my $DomainId             = $UpdateAssetFilterOutput->DomainId;
    my $EffectiveColumnNames = $UpdateAssetFilterOutput->EffectiveColumnNames;
    my $EffectiveRowFilter   = $UpdateAssetFilterOutput->EffectiveRowFilter;
    my $ErrorMessage         = $UpdateAssetFilterOutput->ErrorMessage;
    my $Id                   = $UpdateAssetFilterOutput->Id;
    my $Name                 = $UpdateAssetFilterOutput->Name;
    my $Status               = $UpdateAssetFilterOutput->Status;

    # Returns a L<Paws::DataZone::UpdateAssetFilterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateAssetFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIdentifier => Str

The ID of the data asset.



=head2 Configuration => L<Paws::DataZone::AssetFilterConfiguration>

The configuration of the asset filter.



=head2 Description => Str

The description of the asset filter.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to update an asset filter.



=head2 B<REQUIRED> Identifier => Str

The ID of the asset filter.



=head2 Name => Str

The name of the asset filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssetFilter in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

