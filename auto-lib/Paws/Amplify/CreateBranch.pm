
package Paws::Amplify::CreateBranch;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has Backend => (is => 'ro', isa => 'Paws::Amplify::Backend', traits => ['NameInRequest'], request_name => 'backend');
  has BackendEnvironmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentArn');
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'basicAuthCredentials');
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName', required => 1);
  has BuildSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildSpec');
  has ComputeRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeRoleArn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has EnableAutoBuild => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableAutoBuild');
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBasicAuth');
  has EnableNotification => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableNotification');
  has EnablePerformanceMode => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enablePerformanceMode');
  has EnablePullRequestPreview => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enablePullRequestPreview');
  has EnableSkewProtection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableSkewProtection');
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', traits => ['NameInRequest'], request_name => 'environmentVariables');
  has Framework => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'framework');
  has PullRequestEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestEnvironmentName');
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage');
  has Tags => (is => 'ro', isa => 'Paws::Amplify::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Ttl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ttl');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBranch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/branches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::CreateBranchResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateBranch - Arguments for method CreateBranch on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBranch on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBranch.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateBranchResult = $amplify->CreateBranch(
      AppId      => 'MyAppId',
      BranchName => 'MyBranchName',
      Backend    => {
        StackArn => 'MyStackArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      BackendEnvironmentArn    => 'MyBackendEnvironmentArn',    # OPTIONAL
      BasicAuthCredentials     => 'MyBasicAuthCredentials',     # OPTIONAL
      BuildSpec                => 'MyBuildSpec',                # OPTIONAL
      ComputeRoleArn           => 'MyComputeRoleArn',           # OPTIONAL
      Description              => 'MyDescription',              # OPTIONAL
      DisplayName              => 'MyDisplayName',              # OPTIONAL
      EnableAutoBuild          => 1,                            # OPTIONAL
      EnableBasicAuth          => 1,                            # OPTIONAL
      EnableNotification       => 1,                            # OPTIONAL
      EnablePerformanceMode    => 1,                            # OPTIONAL
      EnablePullRequestPreview => 1,                            # OPTIONAL
      EnableSkewProtection     => 1,                            # OPTIONAL
      EnvironmentVariables     => {
        'MyEnvKey' => 'MyEnvValue',    # key: max: 255, value: max: 5500
      },    # OPTIONAL
      Framework                  => 'MyFramework',                    # OPTIONAL
      PullRequestEnvironmentName => 'MyPullRequestEnvironmentName',   # OPTIONAL
      Stage                      => 'PRODUCTION',                     # OPTIONAL
      Tags                       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Ttl => 'MyTTL',    # OPTIONAL
    );

    # Results:
    my $Branch = $CreateBranchResult->Branch;

    # Returns a L<Paws::Amplify::CreateBranchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateBranch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for an Amplify app.



=head2 Backend => L<Paws::Amplify::Backend>

The backend for a C<Branch> of an Amplify app. Use for a backend
created from an CloudFormation stack.

This field is available to Amplify Gen 2 apps only. When you deploy an
application with Amplify Gen 2, you provision the app's backend
infrastructure using Typescript code.



=head2 BackendEnvironmentArn => Str

The Amazon Resource Name (ARN) for a backend environment that is part
of a Gen 1 Amplify app.

This field is available to Amplify Gen 1 apps only where the backend is
created using Amplify Studio or the Amplify command line interface
(CLI).



=head2 BasicAuthCredentials => Str

The basic authorization credentials for the branch. You must
base64-encode the authorization credentials and provide them in the
format C<user:password>.



=head2 B<REQUIRED> BranchName => Str

The name for the branch.



=head2 BuildSpec => Str

The build specification (build spec) for the branch.



=head2 ComputeRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to assign to a branch of
an SSR app. The SSR Compute role allows the Amplify Hosting compute
service to securely access specific Amazon Web Services resources based
on the role's permissions. For more information about the SSR Compute
role, see Adding an SSR Compute role
(https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html)
in the I<Amplify User Guide>.



=head2 Description => Str

The description for the branch.



=head2 DisplayName => Str

The display name for a branch. This is used as the default domain
prefix.



=head2 EnableAutoBuild => Bool

Enables auto building for the branch.



=head2 EnableBasicAuth => Bool

Enables basic authorization for the branch.



=head2 EnableNotification => Bool

Enables notifications for the branch.



=head2 EnablePerformanceMode => Bool

Enables performance mode for the branch.

Performance mode optimizes for faster hosting performance by keeping
content cached at the edge for a longer interval. When performance mode
is enabled, hosting configuration or code changes can take up to 10
minutes to roll out.



=head2 EnablePullRequestPreview => Bool

Enables pull request previews for this branch.



=head2 EnableSkewProtection => Bool

Specifies whether the skew protection feature is enabled for the
branch.

Deployment skew protection is available to Amplify applications to
eliminate version skew issues between client and servers in web
applications. When you apply skew protection to a branch, you can
ensure that your clients always interact with the correct version of
server-side assets, regardless of when a deployment occurs. For more
information about skew protection, see Skew protection for Amplify
deployments
(https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html)
in the I<Amplify User Guide>.



=head2 EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

The environment variables for the branch.



=head2 Framework => Str

The framework for the branch.



=head2 PullRequestEnvironmentName => Str

The Amplify environment name for the pull request.



=head2 Stage => Str

Describes the current stage for the branch.

Valid values are: C<"PRODUCTION">, C<"BETA">, C<"DEVELOPMENT">, C<"EXPERIMENTAL">, C<"PULL_REQUEST">

=head2 Tags => L<Paws::Amplify::TagMap>

The tag for the branch.



=head2 Ttl => Str

The content Time To Live (TTL) for the website in seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBranch in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

