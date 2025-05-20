
package Paws::Bedrock::GetCustomModel;
  use Moose;
  has ModelIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCustomModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-models/{modelIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetCustomModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetCustomModel - Arguments for method GetCustomModel on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCustomModel on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetCustomModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCustomModel.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetCustomModelResponse = $bedrock->GetCustomModel(
      ModelIdentifier => 'MyModelIdentifier',

    );

    # Results:
    my $BaseModelArn         = $GetCustomModelResponse->BaseModelArn;
    my $CreationTime         = $GetCustomModelResponse->CreationTime;
    my $CustomizationConfig  = $GetCustomModelResponse->CustomizationConfig;
    my $CustomizationType    = $GetCustomModelResponse->CustomizationType;
    my $HyperParameters      = $GetCustomModelResponse->HyperParameters;
    my $JobArn               = $GetCustomModelResponse->JobArn;
    my $JobName              = $GetCustomModelResponse->JobName;
    my $ModelArn             = $GetCustomModelResponse->ModelArn;
    my $ModelKmsKeyArn       = $GetCustomModelResponse->ModelKmsKeyArn;
    my $ModelName            = $GetCustomModelResponse->ModelName;
    my $OutputDataConfig     = $GetCustomModelResponse->OutputDataConfig;
    my $TrainingDataConfig   = $GetCustomModelResponse->TrainingDataConfig;
    my $TrainingMetrics      = $GetCustomModelResponse->TrainingMetrics;
    my $ValidationDataConfig = $GetCustomModelResponse->ValidationDataConfig;
    my $ValidationMetrics    = $GetCustomModelResponse->ValidationMetrics;

    # Returns a L<Paws::Bedrock::GetCustomModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetCustomModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelIdentifier => Str

Name or Amazon Resource Name (ARN) of the custom model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCustomModel in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

