
package Paws::Glue::GetTableOptimizer;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableOptimizer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetTableOptimizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableOptimizer - Arguments for method GetTableOptimizer on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableOptimizer on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetTableOptimizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableOptimizer.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetTableOptimizerResponse = $glue->GetTableOptimizer(
      CatalogId    => 'MyCatalogIdString',
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',
      Type         => 'compaction',

    );

    # Results:
    my $CatalogId      = $GetTableOptimizerResponse->CatalogId;
    my $DatabaseName   = $GetTableOptimizerResponse->DatabaseName;
    my $TableName      = $GetTableOptimizerResponse->TableName;
    my $TableOptimizer = $GetTableOptimizerResponse->TableOptimizer;

    # Returns a L<Paws::Glue::GetTableOptimizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetTableOptimizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogId => Str

The Catalog ID of the table.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database in the catalog in which the table resides.



=head2 B<REQUIRED> TableName => Str

The name of the table.



=head2 B<REQUIRED> Type => Str

The type of table optimizer.

Valid values are: C<"compaction">, C<"retention">, C<"orphan_file_deletion">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableOptimizer in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

