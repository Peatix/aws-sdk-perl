
package Paws::BedrockDataAutomation::ListDataAutomationProjects;
  use Moose;
  has BlueprintFilter => (is => 'ro', isa => 'Paws::BedrockDataAutomation::BlueprintFilter', traits => ['NameInRequest'], request_name => 'blueprintFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProjectStageFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectStageFilter');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataAutomationProjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/data-automation-projects/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::ListDataAutomationProjectsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::ListDataAutomationProjects - Arguments for method ListDataAutomationProjects on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataAutomationProjects on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method ListDataAutomationProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataAutomationProjects.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $ListDataAutomationProjectsResponse =
      $bedrock -data-automation->ListDataAutomationProjects(
      BlueprintFilter => {
        BlueprintArn     => 'MyBlueprintArn',       # max: 128
        BlueprintStage   => 'DEVELOPMENT', # values: DEVELOPMENT, LIVE; OPTIONAL
        BlueprintVersion => 'MyBlueprintVersion',   # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      ProjectStageFilter => 'DEVELOPMENT',    # OPTIONAL
      ResourceOwner      => 'SERVICE',        # OPTIONAL
      );

    # Results:
    my $NextToken = $ListDataAutomationProjectsResponse->NextToken;
    my $Projects  = $ListDataAutomationProjectsResponse->Projects;

# Returns a L<Paws::BedrockDataAutomation::ListDataAutomationProjectsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/ListDataAutomationProjects>

=head1 ATTRIBUTES


=head2 BlueprintFilter => L<Paws::BedrockDataAutomation::BlueprintFilter>





=head2 MaxResults => Int





=head2 NextToken => Str





=head2 ProjectStageFilter => Str



Valid values are: C<"DEVELOPMENT">, C<"LIVE">, C<"ALL">

=head2 ResourceOwner => Str



Valid values are: C<"SERVICE">, C<"ACCOUNT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataAutomationProjects in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

