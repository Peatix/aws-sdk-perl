
package Paws::BedrockDataAutomation::GetDataAutomationProject;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectArn', required => 1);
  has ProjectStage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectStage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataAutomationProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/data-automation-projects/{projectArn}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::GetDataAutomationProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::GetDataAutomationProject - Arguments for method GetDataAutomationProject on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataAutomationProject on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method GetDataAutomationProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataAutomationProject.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $GetDataAutomationProjectResponse =
      $bedrock -data-automation->GetDataAutomationProject(
      ProjectArn   => 'MyDataAutomationProjectArn',
      ProjectStage => 'DEVELOPMENT',                  # OPTIONAL
      );

    # Results:
    my $Project = $GetDataAutomationProjectResponse->Project;

# Returns a L<Paws::BedrockDataAutomation::GetDataAutomationProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/GetDataAutomationProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str

ARN generated at the server side when a DataAutomationProject is
created



=head2 ProjectStage => Str

Optional field to delete a specific DataAutomationProject stage

Valid values are: C<"DEVELOPMENT">, C<"LIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataAutomationProject in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

