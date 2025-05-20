
package Paws::Connect::UpdatePrompt;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has PromptId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PromptId', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/{InstanceId}/{PromptId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdatePromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdatePrompt - Arguments for method UpdatePrompt on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePrompt on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdatePrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePrompt.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdatePromptResponse = $connect->UpdatePrompt(
      InstanceId  => 'MyInstanceId',
      PromptId    => 'MyPromptId',
      Description => 'MyPromptDescription',      # OPTIONAL
      Name        => 'MyCommonNameLength127',    # OPTIONAL
      S3Uri       => 'MyS3Uri',                  # OPTIONAL
    );

    # Results:
    my $PromptARN = $UpdatePromptResponse->PromptARN;
    my $PromptId  = $UpdatePromptResponse->PromptId;

    # Returns a L<Paws::Connect::UpdatePromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdatePrompt>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the prompt.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of the prompt.



=head2 B<REQUIRED> PromptId => Str

A unique identifier for the prompt.



=head2 S3Uri => Str

The URI for the S3 bucket where the prompt is stored. You can provide
S3 pre-signed URLs returned by the GetPromptFile
(https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html)
API instead of providing S3 URIs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePrompt in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

