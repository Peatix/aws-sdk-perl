
package Paws::Evidently::UpdateProject;
  use Moose;
  has AppConfigResource => (is => 'ro', isa => 'Paws::Evidently::ProjectAppConfigResourceConfig', traits => ['NameInRequest'], request_name => 'appConfigResource');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::UpdateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::UpdateProject - Arguments for method UpdateProject on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $UpdateProjectResponse = $evidently->UpdateProject(
      Project           => 'MyProjectRef',
      AppConfigResource => {
        ApplicationId => 'MyAppConfigResourceId',    # OPTIONAL
        EnvironmentId => 'MyAppConfigResourceId',    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Project = $UpdateProjectResponse->Project;

    # Returns a L<Paws::Evidently::UpdateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/UpdateProject>

=head1 ATTRIBUTES


=head2 AppConfigResource => L<Paws::Evidently::ProjectAppConfigResourceConfig>

Use this parameter if the project will use client-side evaluation
powered by AppConfig. Client-side evaluation allows your application to
assign variations to user sessions locally instead of by calling the
EvaluateFeature
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html)
operation. This mitigates the latency and availability risks that come
with an API call. allows you to

This parameter is a structure that contains information about the
AppConfig application that will be used for client-side evaluation.



=head2 Description => Str

An optional description of the project.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

