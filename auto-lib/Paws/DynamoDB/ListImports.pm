
package Paws::DynamoDB::ListImports;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has TableArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ListImportsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListImports - Arguments for method ListImports on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImports on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ListImports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImports.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ListImportsOutput = $dynamodb->ListImports(
      NextToken => 'MyImportNextToken',    # OPTIONAL
      PageSize  => 1,                      # OPTIONAL
      TableArn  => 'MyTableArn',           # OPTIONAL
    );

    # Results:
    my $ImportSummaryList = $ListImportsOutput->ImportSummaryList;
    my $NextToken         = $ListImportsOutput->NextToken;

    # Returns a L<Paws::DynamoDB::ListImportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ListImports>

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional string that, if supplied, must be copied from the output of
a previous call to C<ListImports>. When provided in this manner, the
API fetches the next page of results.



=head2 PageSize => Int

The number of C<ImportSummary >objects returned in a single page.



=head2 TableArn => Str

The Amazon Resource Name (ARN) associated with the table that was
imported to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImports in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

