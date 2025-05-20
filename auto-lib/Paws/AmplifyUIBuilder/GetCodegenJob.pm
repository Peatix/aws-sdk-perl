
package Paws::AmplifyUIBuilder::GetCodegenJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCodegenJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/codegen-jobs/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::GetCodegenJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::GetCodegenJob - Arguments for method GetCodegenJob on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCodegenJob on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method GetCodegenJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCodegenJob.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $GetCodegenJobResponse = $amplifyuibuilder->GetCodegenJob(
      AppId           => 'MyAppId',
      EnvironmentName => 'MyString',
      Id              => 'MyUuid',

    );

    # Results:
    my $Job = $GetCodegenJobResponse->Job;

    # Returns a L<Paws::AmplifyUIBuilder::GetCodegenJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/GetCodegenJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID of the Amplify app associated with the code generation
job.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app
associated with the code generation job.



=head2 B<REQUIRED> Id => Str

The unique ID of the code generation job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCodegenJob in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

