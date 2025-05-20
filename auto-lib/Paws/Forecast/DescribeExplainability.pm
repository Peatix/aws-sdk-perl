
package Paws::Forecast::DescribeExplainability;
  use Moose;
  has ExplainabilityArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExplainability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeExplainabilityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeExplainability - Arguments for method DescribeExplainability on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExplainability on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeExplainability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExplainability.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeExplainabilityResponse = $forecast->DescribeExplainability(
      ExplainabilityArn => 'MyArn',

    );

    # Results:
    my $CreationTime = $DescribeExplainabilityResponse->CreationTime;
    my $DataSource   = $DescribeExplainabilityResponse->DataSource;
    my $EnableVisualization =
      $DescribeExplainabilityResponse->EnableVisualization;
    my $EndDateTime = $DescribeExplainabilityResponse->EndDateTime;
    my $EstimatedTimeRemainingInMinutes =
      $DescribeExplainabilityResponse->EstimatedTimeRemainingInMinutes;
    my $ExplainabilityArn = $DescribeExplainabilityResponse->ExplainabilityArn;
    my $ExplainabilityConfig =
      $DescribeExplainabilityResponse->ExplainabilityConfig;
    my $ExplainabilityName =
      $DescribeExplainabilityResponse->ExplainabilityName;
    my $LastModificationTime =
      $DescribeExplainabilityResponse->LastModificationTime;
    my $Message       = $DescribeExplainabilityResponse->Message;
    my $ResourceArn   = $DescribeExplainabilityResponse->ResourceArn;
    my $Schema        = $DescribeExplainabilityResponse->Schema;
    my $StartDateTime = $DescribeExplainabilityResponse->StartDateTime;
    my $Status        = $DescribeExplainabilityResponse->Status;

    # Returns a L<Paws::Forecast::DescribeExplainabilityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeExplainability>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExplainabilityArn => Str

The Amazon Resource Name (ARN) of the Explaianability to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExplainability in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

