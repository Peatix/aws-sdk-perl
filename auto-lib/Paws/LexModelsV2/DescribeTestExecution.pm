
package Paws::LexModelsV2::DescribeTestExecution;
  use Moose;
  has TestExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTestExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testexecutions/{testExecutionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeTestExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestExecution - Arguments for method DescribeTestExecution on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTestExecution on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeTestExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTestExecution.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeTestExecutionResponse =
      $models - v2 -lex->DescribeTestExecution(
      TestExecutionId => 'MyId',

      );

    # Results:
    my $ApiMode          = $DescribeTestExecutionResponse->ApiMode;
    my $CreationDateTime = $DescribeTestExecutionResponse->CreationDateTime;
    my $FailureReasons   = $DescribeTestExecutionResponse->FailureReasons;
    my $LastUpdatedDateTime =
      $DescribeTestExecutionResponse->LastUpdatedDateTime;
    my $Target          = $DescribeTestExecutionResponse->Target;
    my $TestExecutionId = $DescribeTestExecutionResponse->TestExecutionId;
    my $TestExecutionModality =
      $DescribeTestExecutionResponse->TestExecutionModality;
    my $TestExecutionStatus =
      $DescribeTestExecutionResponse->TestExecutionStatus;
    my $TestSetId   = $DescribeTestExecutionResponse->TestSetId;
    my $TestSetName = $DescribeTestExecutionResponse->TestSetName;

    # Returns a L<Paws::LexModelsV2::DescribeTestExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeTestExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestExecutionId => Str

The execution Id of the test set execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTestExecution in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

