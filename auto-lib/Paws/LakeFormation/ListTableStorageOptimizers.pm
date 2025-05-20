
package Paws::LakeFormation::ListTableStorageOptimizers;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageOptimizerType => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTableStorageOptimizers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListTableStorageOptimizers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListTableStorageOptimizersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListTableStorageOptimizers - Arguments for method ListTableStorageOptimizers on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTableStorageOptimizers on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListTableStorageOptimizers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTableStorageOptimizers.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListTableStorageOptimizersResponse =
      $lakeformation->ListTableStorageOptimizers(
      DatabaseName         => 'MyNameString',
      TableName            => 'MyNameString',
      CatalogId            => 'MyCatalogIdString',    # OPTIONAL
      MaxResults           => 1,                      # OPTIONAL
      NextToken            => 'MyToken',              # OPTIONAL
      StorageOptimizerType => 'COMPACTION',           # OPTIONAL
      );

    # Results:
    my $NextToken = $ListTableStorageOptimizersResponse->NextToken;
    my $StorageOptimizerList =
      $ListTableStorageOptimizersResponse->StorageOptimizerList;

  # Returns a L<Paws::LakeFormation::ListTableStorageOptimizersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListTableStorageOptimizers>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The Catalog ID of the table.



=head2 B<REQUIRED> DatabaseName => Str

Name of the database where the table is present.



=head2 MaxResults => Int

The number of storage optimizers to return on each call.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 StorageOptimizerType => Str

The specific type of storage optimizers to list. The supported value is
C<compaction>.

Valid values are: C<"COMPACTION">, C<"GARBAGE_COLLECTION">, C<"ALL">

=head2 B<REQUIRED> TableName => Str

Name of the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTableStorageOptimizers in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

