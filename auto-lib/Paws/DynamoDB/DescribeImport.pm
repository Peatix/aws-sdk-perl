
package Paws::DynamoDB::DescribeImport;
  use Moose;
  has ImportArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeImportOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeImport - Arguments for method DescribeImport on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImport on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImport.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DescribeImportOutput = $dynamodb->DescribeImport(
      ImportArn => 'MyImportArn',

    );

    # Results:
    my $ImportTableDescription = $DescribeImportOutput->ImportTableDescription;

    # Returns a L<Paws::DynamoDB::DescribeImportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DescribeImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportArn => Str

The Amazon Resource Name (ARN) associated with the table you're
importing to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImport in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

