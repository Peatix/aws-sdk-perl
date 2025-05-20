
package Paws::BedrockDataAutomation::CreateBlueprintVersion;
  use Moose;
  has BlueprintArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'blueprintArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBlueprintVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/blueprints/{blueprintArn}/versions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::CreateBlueprintVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::CreateBlueprintVersion - Arguments for method CreateBlueprintVersion on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBlueprintVersion on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method CreateBlueprintVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBlueprintVersion.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $CreateBlueprintVersionResponse =
      $bedrock -data-automation->CreateBlueprintVersion(
      BlueprintArn => 'MyBlueprintArn',
      ClientToken  => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $Blueprint = $CreateBlueprintVersionResponse->Blueprint;

# Returns a L<Paws::BedrockDataAutomation::CreateBlueprintVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/CreateBlueprintVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintArn => Str

ARN generated at the server side when a Blueprint is created



=head2 ClientToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBlueprintVersion in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

