
package Paws::Bedrock::GetPromptRouter;
  use Moose;
  has PromptRouterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'promptRouterArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPromptRouter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompt-routers/{promptRouterArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetPromptRouterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetPromptRouter - Arguments for method GetPromptRouter on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPromptRouter on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetPromptRouter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPromptRouter.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetPromptRouterResponse = $bedrock->GetPromptRouter(
      PromptRouterArn => 'MyPromptRouterArn',

    );

    # Results:
    my $CreatedAt        = $GetPromptRouterResponse->CreatedAt;
    my $Description      = $GetPromptRouterResponse->Description;
    my $FallbackModel    = $GetPromptRouterResponse->FallbackModel;
    my $Models           = $GetPromptRouterResponse->Models;
    my $PromptRouterArn  = $GetPromptRouterResponse->PromptRouterArn;
    my $PromptRouterName = $GetPromptRouterResponse->PromptRouterName;
    my $RoutingCriteria  = $GetPromptRouterResponse->RoutingCriteria;
    my $Status           = $GetPromptRouterResponse->Status;
    my $Type             = $GetPromptRouterResponse->Type;
    my $UpdatedAt        = $GetPromptRouterResponse->UpdatedAt;

    # Returns a L<Paws::Bedrock::GetPromptRouterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetPromptRouter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PromptRouterArn => Str

The prompt router's ARN




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPromptRouter in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

