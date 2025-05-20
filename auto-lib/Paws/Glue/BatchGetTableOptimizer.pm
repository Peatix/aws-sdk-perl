
package Paws::Glue::BatchGetTableOptimizer;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BatchGetTableOptimizerEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetTableOptimizer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchGetTableOptimizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetTableOptimizer - Arguments for method BatchGetTableOptimizer on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetTableOptimizer on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetTableOptimizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetTableOptimizer.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetTableOptimizerResponse = $glue->BatchGetTableOptimizer(
      Entries => [
        {
          CatalogId    => 'MyCatalogIdString',      # min: 1, max: 255; OPTIONAL
          DatabaseName => 'MydatabaseNameString',   # min: 1; OPTIONAL
          TableName    => 'MytableNameString',      # min: 1; OPTIONAL
          Type         => 'compaction'
          ,    # values: compaction, retention, orphan_file_deletion; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Failures        = $BatchGetTableOptimizerResponse->Failures;
    my $TableOptimizers = $BatchGetTableOptimizerResponse->TableOptimizers;

    # Returns a L<Paws::Glue::BatchGetTableOptimizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetTableOptimizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::Glue::BatchGetTableOptimizerEntry>]

A list of C<BatchGetTableOptimizerEntry> objects specifying the table
optimizers to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetTableOptimizer in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

