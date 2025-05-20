
package Paws::Glue::CreateTableOptimizer;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TableOptimizerConfiguration => (is => 'ro', isa => 'Paws::Glue::TableOptimizerConfiguration', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTableOptimizer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateTableOptimizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTableOptimizer - Arguments for method CreateTableOptimizer on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTableOptimizer on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateTableOptimizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTableOptimizer.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateTableOptimizerResponse = $glue->CreateTableOptimizer(
      CatalogId                   => 'MyCatalogIdString',
      DatabaseName                => 'MyNameString',
      TableName                   => 'MyNameString',
      TableOptimizerConfiguration => {
        Enabled                         => 1,    # OPTIONAL
        OrphanFileDeletionConfiguration => {
          IcebergConfiguration => {
            Location                        => 'MyMessageString',    # OPTIONAL
            OrphanFileRetentionPeriodInDays => 1,                    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        RetentionConfiguration => {
          IcebergConfiguration => {
            CleanExpiredFiles             => 1,    # OPTIONAL
            NumberOfSnapshotsToRetain     => 1,    # OPTIONAL
            SnapshotRetentionPeriodInDays => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        RoleArn          => 'MyArnString',    # min: 20, max: 2048; OPTIONAL
        VpcConfiguration => {
          GlueConnectionName => 'MyglueConnectionNameString', # min: 1; OPTIONAL
        },    # OPTIONAL
      },
      Type => 'compaction',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateTableOptimizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogId => Str

The Catalog ID of the table.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database in the catalog in which the table resides.



=head2 B<REQUIRED> TableName => Str

The name of the table.



=head2 B<REQUIRED> TableOptimizerConfiguration => L<Paws::Glue::TableOptimizerConfiguration>

A C<TableOptimizerConfiguration> object representing the configuration
of a table optimizer.



=head2 B<REQUIRED> Type => Str

The type of table optimizer.

Valid values are: C<"compaction">, C<"retention">, C<"orphan_file_deletion">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTableOptimizer in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

