
package Paws::BedrockDataAutomation::ListBlueprints;
  use Moose;
  has BlueprintArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blueprintArn');
  has BlueprintStageFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blueprintStageFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProjectFilter => (is => 'ro', isa => 'Paws::BedrockDataAutomation::DataAutomationProjectFilter', traits => ['NameInRequest'], request_name => 'projectFilter');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBlueprints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/blueprints/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::ListBlueprintsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::ListBlueprints - Arguments for method ListBlueprints on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBlueprints on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method ListBlueprints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBlueprints.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $ListBlueprintsResponse = $bedrock -data-automation->ListBlueprints(
      BlueprintArn         => 'MyBlueprintArn',    # OPTIONAL
      BlueprintStageFilter => 'DEVELOPMENT',       # OPTIONAL
      MaxResults           => 1,                   # OPTIONAL
      NextToken            => 'MyNextToken',       # OPTIONAL
      ProjectFilter        => {
        ProjectArn   => 'MyDataAutomationProjectArn',    # max: 128
        ProjectStage => 'DEVELOPMENT',    # values: DEVELOPMENT, LIVE; OPTIONAL
      },    # OPTIONAL
      ResourceOwner => 'SERVICE',    # OPTIONAL
    );

    # Results:
    my $Blueprints = $ListBlueprintsResponse->Blueprints;
    my $NextToken  = $ListBlueprintsResponse->NextToken;

    # Returns a L<Paws::BedrockDataAutomation::ListBlueprintsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/ListBlueprints>

=head1 ATTRIBUTES


=head2 BlueprintArn => Str





=head2 BlueprintStageFilter => Str



Valid values are: C<"DEVELOPMENT">, C<"LIVE">, C<"ALL">

=head2 MaxResults => Int





=head2 NextToken => Str





=head2 ProjectFilter => L<Paws::BedrockDataAutomation::DataAutomationProjectFilter>





=head2 ResourceOwner => Str



Valid values are: C<"SERVICE">, C<"ACCOUNT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBlueprints in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

