
package Paws::EKS::CreateFargateProfile;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has FargateProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fargateProfileName', required => 1);
  has PodExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'podExecutionRoleArn', required => 1);
  has Selectors => (is => 'ro', isa => 'ArrayRef[Paws::EKS::FargateProfileSelector]', traits => ['NameInRequest'], request_name => 'selectors');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets');
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFargateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/fargate-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateFargateProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateFargateProfile - Arguments for method CreateFargateProfile on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFargateProfile on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateFargateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFargateProfile.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreateFargateProfileResponse = $eks->CreateFargateProfile(
      ClusterName         => 'MyString',
      FargateProfileName  => 'MyString',
      PodExecutionRoleArn => 'MyString',
      ClientRequestToken  => 'MyString',    # OPTIONAL
      Selectors           => [
        {
          Labels    => { 'MyString' => 'MyString', },    # OPTIONAL
          Namespace => 'MyString',
        },
        ...
      ],    # OPTIONAL
      Subnets => [ 'MyString', ... ],    # OPTIONAL
      Tags    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $FargateProfile = $CreateFargateProfileResponse->FargateProfile;

    # Returns a L<Paws::EKS::CreateFargateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateFargateProfile>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of your cluster.



=head2 B<REQUIRED> FargateProfileName => Str

The name of the Fargate profile.



=head2 B<REQUIRED> PodExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the C<Pod> execution role to use for
a C<Pod> that matches the selectors in the Fargate profile. The C<Pod>
execution role allows Fargate infrastructure to register with your
cluster as a node, and it provides read access to Amazon ECR image
repositories. For more information, see C<Pod> execution role
(https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
in the I<Amazon EKS User Guide>.



=head2 Selectors => ArrayRef[L<Paws::EKS::FargateProfileSelector>]

The selectors to match for a C<Pod> to use this Fargate profile. Each
selector must have an associated Kubernetes C<namespace>. Optionally,
you can also specify C<labels> for a C<namespace>. You may specify up
to five selectors in a Fargate profile.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of subnets to launch a C<Pod> into. A C<Pod> running on Fargate
isn't assigned a public IP address, so only private subnets (with no
direct route to an Internet Gateway) are accepted for this parameter.



=head2 Tags => L<Paws::EKS::TagMap>

Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFargateProfile in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

