
package Paws::DataZone::CreateAssetFilter;
  use Moose;
  has AssetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetIdentifier', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::DataZone::AssetFilterConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssetFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateAssetFilterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateAssetFilter - Arguments for method CreateAssetFilter on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssetFilter on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateAssetFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssetFilter.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateAssetFilterOutput = $datazone->CreateAssetFilter(
      AssetIdentifier => 'MyAssetId',
      Configuration   => {
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
      },
      DomainIdentifier => 'MyDomainId',
      Name             => 'MyFilterName',
      ClientToken      => 'MyString',         # OPTIONAL
      Description      => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $AssetId              = $CreateAssetFilterOutput->AssetId;
    my $Configuration        = $CreateAssetFilterOutput->Configuration;
    my $CreatedAt            = $CreateAssetFilterOutput->CreatedAt;
    my $Description          = $CreateAssetFilterOutput->Description;
    my $DomainId             = $CreateAssetFilterOutput->DomainId;
    my $EffectiveColumnNames = $CreateAssetFilterOutput->EffectiveColumnNames;
    my $EffectiveRowFilter   = $CreateAssetFilterOutput->EffectiveRowFilter;
    my $ErrorMessage         = $CreateAssetFilterOutput->ErrorMessage;
    my $Id                   = $CreateAssetFilterOutput->Id;
    my $Name                 = $CreateAssetFilterOutput->Name;
    my $Status               = $CreateAssetFilterOutput->Status;

    # Returns a L<Paws::DataZone::CreateAssetFilterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateAssetFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIdentifier => Str

The ID of the data asset.



=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> Configuration => L<Paws::DataZone::AssetFilterConfiguration>

The configuration of the asset filter.



=head2 Description => Str

The description of the asset filter.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain in which you want to create an asset filter.



=head2 B<REQUIRED> Name => Str

The name of the asset filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssetFilter in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

