
package Paws::DataZone::CreateAssetFilterOutput;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::DataZone::AssetFilterConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EffectiveColumnNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'effectiveColumnNames');
  has EffectiveRowFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'effectiveRowFilter');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateAssetFilterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset.


=head2 B<REQUIRED> Configuration => L<Paws::DataZone::AssetFilterConfiguration>

The configuration of the asset filter.


=head2 CreatedAt => Str

The timestamp at which the asset filter was created.


=head2 Description => Str

The description of the asset filter.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where the asset filter is created.


=head2 EffectiveColumnNames => ArrayRef[Str|Undef]

The column names in the asset filter.


=head2 EffectiveRowFilter => Str

The row filter in the asset filter.


=head2 ErrorMessage => Str

The error message that is displayed if the asset filter is not created
successfully.


=head2 B<REQUIRED> Id => Str

The ID of the asset filter.


=head2 B<REQUIRED> Name => Str

The name of the asset filter.


=head2 Status => Str

The status of the asset filter.

Valid values are: C<"VALID">, C<"INVALID">
=head2 _request_id => Str


=cut

