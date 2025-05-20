
package Paws::Athena::BatchGetPreparedStatement;
  use Moose;
  has PreparedStatementNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetPreparedStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::BatchGetPreparedStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetPreparedStatement - Arguments for method BatchGetPreparedStatement on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetPreparedStatement on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method BatchGetPreparedStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetPreparedStatement.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $BatchGetPreparedStatementOutput = $athena->BatchGetPreparedStatement(
      PreparedStatementNames => [
        'MyStatementName', ...    # min: 1, max: 256
      ],
      WorkGroup => 'MyWorkGroupName',

    );

    # Results:
    my $PreparedStatements =
      $BatchGetPreparedStatementOutput->PreparedStatements;
    my $UnprocessedPreparedStatementNames =
      $BatchGetPreparedStatementOutput->UnprocessedPreparedStatementNames;

    # Returns a L<Paws::Athena::BatchGetPreparedStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/BatchGetPreparedStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PreparedStatementNames => ArrayRef[Str|Undef]

A list of prepared statement names to return.



=head2 B<REQUIRED> WorkGroup => Str

The name of the workgroup to which the prepared statements belong.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetPreparedStatement in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

