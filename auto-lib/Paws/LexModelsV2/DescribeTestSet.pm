
package Paws::LexModelsV2::DescribeTestSet;
  use Moose;
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTestSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsets/{testSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeTestSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestSet - Arguments for method DescribeTestSet on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTestSet on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeTestSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTestSet.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeTestSetResponse = $models - v2 -lex->DescribeTestSet(
      TestSetId => 'MyId',

    );

    # Results:
    my $CreationDateTime    = $DescribeTestSetResponse->CreationDateTime;
    my $Description         = $DescribeTestSetResponse->Description;
    my $LastUpdatedDateTime = $DescribeTestSetResponse->LastUpdatedDateTime;
    my $Modality            = $DescribeTestSetResponse->Modality;
    my $NumTurns            = $DescribeTestSetResponse->NumTurns;
    my $RoleArn             = $DescribeTestSetResponse->RoleArn;
    my $Status              = $DescribeTestSetResponse->Status;
    my $StorageLocation     = $DescribeTestSetResponse->StorageLocation;
    my $TestSetId           = $DescribeTestSetResponse->TestSetId;
    my $TestSetName         = $DescribeTestSetResponse->TestSetName;

    # Returns a L<Paws::LexModelsV2::DescribeTestSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeTestSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSetId => Str

The test set Id for the test set request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTestSet in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

