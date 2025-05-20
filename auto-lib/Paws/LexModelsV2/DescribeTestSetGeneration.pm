
package Paws::LexModelsV2::DescribeTestSetGeneration;
  use Moose;
  has TestSetGenerationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSetGenerationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTestSetGeneration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsetgenerations/{testSetGenerationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeTestSetGenerationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestSetGeneration - Arguments for method DescribeTestSetGeneration on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTestSetGeneration on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeTestSetGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTestSetGeneration.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeTestSetGenerationResponse =
      $models - v2 -lex->DescribeTestSetGeneration(
      TestSetGenerationId => 'MyId',

      );

    # Results:
    my $CreationDateTime = $DescribeTestSetGenerationResponse->CreationDateTime;
    my $Description      = $DescribeTestSetGenerationResponse->Description;
    my $FailureReasons   = $DescribeTestSetGenerationResponse->FailureReasons;
    my $GenerationDataSource =
      $DescribeTestSetGenerationResponse->GenerationDataSource;
    my $LastUpdatedDateTime =
      $DescribeTestSetGenerationResponse->LastUpdatedDateTime;
    my $RoleArn         = $DescribeTestSetGenerationResponse->RoleArn;
    my $StorageLocation = $DescribeTestSetGenerationResponse->StorageLocation;
    my $TestSetGenerationId =
      $DescribeTestSetGenerationResponse->TestSetGenerationId;
    my $TestSetGenerationStatus =
      $DescribeTestSetGenerationResponse->TestSetGenerationStatus;
    my $TestSetId   = $DescribeTestSetGenerationResponse->TestSetId;
    my $TestSetName = $DescribeTestSetGenerationResponse->TestSetName;

    # Returns a L<Paws::LexModelsV2::DescribeTestSetGenerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeTestSetGeneration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSetGenerationId => Str

The unique identifier of the test set generation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTestSetGeneration in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

