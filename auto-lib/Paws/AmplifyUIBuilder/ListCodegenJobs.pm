
package Paws::AmplifyUIBuilder::ListCodegenJobs;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCodegenJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/codegen-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::ListCodegenJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ListCodegenJobs - Arguments for method ListCodegenJobs on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCodegenJobs on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method ListCodegenJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCodegenJobs.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $ListCodegenJobsResponse = $amplifyuibuilder->ListCodegenJobs(
      AppId           => 'MyAppId',
      EnvironmentName => 'MyString',
      MaxResults      => 1,             # OPTIONAL
      NextToken       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entities  = $ListCodegenJobsResponse->Entities;
    my $NextToken = $ListCodegenJobsResponse->NextToken;

    # Returns a L<Paws::AmplifyUIBuilder::ListCodegenJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/ListCodegenJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for the Amplify app.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.



=head2 MaxResults => Int

The maximum number of jobs to retrieve.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCodegenJobs in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

