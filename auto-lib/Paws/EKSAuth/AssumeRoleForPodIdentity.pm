
package Paws::EKSAuth::AssumeRoleForPodIdentity;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterName', required => 1);
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleForPodIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{clusterName}/assume-role-for-pod-identity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKSAuth::AssumeRoleForPodIdentityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKSAuth::AssumeRoleForPodIdentity - Arguments for method AssumeRoleForPodIdentity on L<Paws::EKSAuth>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssumeRoleForPodIdentity on the
L<Amazon EKS Auth|Paws::EKSAuth> service. Use the attributes of this class
as arguments to method AssumeRoleForPodIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssumeRoleForPodIdentity.

=head1 SYNOPSIS

    my $eks-auth = Paws->service('EKSAuth');
    my $AssumeRoleForPodIdentityResponse = $eks -auth->AssumeRoleForPodIdentity(
      ClusterName => 'MyClusterName',
      Token       => 'MyJwtToken',

    );

    # Results:
    my $AssumedRoleUser = $AssumeRoleForPodIdentityResponse->AssumedRoleUser;
    my $Audience        = $AssumeRoleForPodIdentityResponse->Audience;
    my $Credentials     = $AssumeRoleForPodIdentityResponse->Credentials;
    my $PodIdentityAssociation =
      $AssumeRoleForPodIdentityResponse->PodIdentityAssociation;
    my $Subject = $AssumeRoleForPodIdentityResponse->Subject;

    # Returns a L<Paws::EKSAuth::AssumeRoleForPodIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks-auth/AssumeRoleForPodIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the cluster for the request.



=head2 B<REQUIRED> Token => Str

The token of the Kubernetes service account for the pod.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssumeRoleForPodIdentity in L<Paws::EKSAuth>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

