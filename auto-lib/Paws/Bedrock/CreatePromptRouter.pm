
package Paws::Bedrock::CreatePromptRouter;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FallbackModel => (is => 'ro', isa => 'Paws::Bedrock::PromptRouterTargetModel', traits => ['NameInRequest'], request_name => 'fallbackModel', required => 1);
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::PromptRouterTargetModel]', traits => ['NameInRequest'], request_name => 'models', required => 1);
  has PromptRouterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'promptRouterName', required => 1);
  has RoutingCriteria => (is => 'ro', isa => 'Paws::Bedrock::RoutingCriteria', traits => ['NameInRequest'], request_name => 'routingCriteria', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePromptRouter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompt-routers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreatePromptRouterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreatePromptRouter - Arguments for method CreatePromptRouter on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePromptRouter on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreatePromptRouter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePromptRouter.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreatePromptRouterResponse = $bedrock->CreatePromptRouter(
      FallbackModel => {
        ModelArn => 'MyPromptRouterTargetModelArn',    # min: 1, max: 2048

      },
      Models => [
        {
          ModelArn => 'MyPromptRouterTargetModelArn',    # min: 1, max: 2048

        },
        ...
      ],
      PromptRouterName => 'MyPromptRouterName',
      RoutingCriteria  => {
        ResponseQualityDifference => 1,    # max: 100

      },
      ClientRequestToken => 'MyIdempotencyToken',           # OPTIONAL
      Description        => 'MyPromptRouterDescription',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $PromptRouterArn = $CreatePromptRouterResponse->PromptRouterArn;

    # Returns a L<Paws::Bedrock::CreatePromptRouterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreatePromptRouter>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure
idempotency of your requests. If not specified, the Amazon Web Services
SDK automatically generates one for you.



=head2 Description => Str

An optional description of the prompt router to help identify its
purpose.



=head2 B<REQUIRED> FallbackModel => L<Paws::Bedrock::PromptRouterTargetModel>

The default model to use when the routing criteria is not met.



=head2 B<REQUIRED> Models => ArrayRef[L<Paws::Bedrock::PromptRouterTargetModel>]

A list of foundation models that the prompt router can route requests
to. At least one model must be specified.



=head2 B<REQUIRED> PromptRouterName => Str

The name of the prompt router. The name must be unique within your
Amazon Web Services account in the current region.



=head2 B<REQUIRED> RoutingCriteria => L<Paws::Bedrock::RoutingCriteria>

The criteria, which is the response quality difference, used to
determine how incoming requests are routed to different models.



=head2 Tags => ArrayRef[L<Paws::Bedrock::Tag>]

An array of key-value pairs to apply to this resource as tags. You can
use tags to categorize and manage your Amazon Web Services resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePromptRouter in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

