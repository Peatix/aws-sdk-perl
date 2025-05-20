
package Paws::BedrockDataAutomation::CreateBlueprint;
  use Moose;
  has BlueprintName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blueprintName', required => 1);
  has BlueprintStage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blueprintStage');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomation::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration');
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomation::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBlueprint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/blueprints/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::CreateBlueprintResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::CreateBlueprint - Arguments for method CreateBlueprint on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBlueprint on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method CreateBlueprint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBlueprint.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $CreateBlueprintResponse = $bedrock -data-automation->CreateBlueprint(
      BlueprintName           => 'MyBlueprintName',
      Schema                  => 'MyBlueprintSchema',
      Type                    => 'DOCUMENT',
      BlueprintStage          => 'DEVELOPMENT',         # OPTIONAL
      ClientToken             => 'MyClientToken',       # OPTIONAL
      EncryptionConfiguration => {
        KmsKeyId             => 'MyKmsKeyId',           # min: 1, max: 2048
        KmsEncryptionContext => {
          'MyEncryptionContextKey' => 'MyEncryptionContextValue'
          ,    # key: min: 1, max: 2000, value: min: 1, max: 2000
        },    # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Blueprint = $CreateBlueprintResponse->Blueprint;

    # Returns a L<Paws::BedrockDataAutomation::CreateBlueprintResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/CreateBlueprint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueprintName => Str





=head2 BlueprintStage => Str



Valid values are: C<"DEVELOPMENT">, C<"LIVE">

=head2 ClientToken => Str





=head2 EncryptionConfiguration => L<Paws::BedrockDataAutomation::EncryptionConfiguration>





=head2 B<REQUIRED> Schema => Str





=head2 Tags => ArrayRef[L<Paws::BedrockDataAutomation::Tag>]





=head2 B<REQUIRED> Type => Str



Valid values are: C<"DOCUMENT">, C<"IMAGE">, C<"AUDIO">, C<"VIDEO">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBlueprint in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

