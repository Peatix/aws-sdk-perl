
package Paws::EKS::UpdateNodegroupVersion;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EKS::LaunchTemplateSpecification', traits => ['NameInRequest'], request_name => 'launchTemplate');
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodegroupName', required => 1);
  has ReleaseVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseVersion');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNodegroupVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/node-groups/{nodegroupName}/update-version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateNodegroupVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateNodegroupVersion - Arguments for method UpdateNodegroupVersion on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNodegroupVersion on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateNodegroupVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNodegroupVersion.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateNodegroupVersionResponse = $eks->UpdateNodegroupVersion(
      ClusterName        => 'MyString',
      NodegroupName      => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      Force              => 1,             # OPTIONAL
      LaunchTemplate     => {
        Id      => 'MyString',
        Name    => 'MyString',
        Version => 'MyString',
      },                                   # OPTIONAL
      ReleaseVersion => 'MyString',        # OPTIONAL
      Version        => 'MyString',        # OPTIONAL
    );

    # Results:
    my $Update = $UpdateNodegroupVersionResponse->Update;

    # Returns a L<Paws::EKS::UpdateNodegroupVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateNodegroupVersion>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of your cluster.



=head2 Force => Bool

Force the update if any C<Pod> on the existing node group can't be
drained due to a C<Pod> disruption budget issue. If an update fails
because all Pods can't be drained, you can force the update after it
fails to terminate the old node whether or not any C<Pod> is running on
the node.



=head2 LaunchTemplate => L<Paws::EKS::LaunchTemplateSpecification>

An object representing a node group's launch template specification.
You can only update a node group using a launch template if the node
group was originally deployed with a launch template. When updating,
you must specify the same launch template ID or name that was used to
create the node group.



=head2 B<REQUIRED> NodegroupName => Str

The name of the managed node group to update.



=head2 ReleaseVersion => Str

The AMI version of the Amazon EKS optimized AMI to use for the update.
By default, the latest available AMI version for the node group's
Kubernetes version is used. For information about Linux versions, see
Amazon EKS optimized Amazon Linux AMI versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>. Amazon EKS managed node groups support
the November 2022 and later releases of the Windows AMIs. For
information about Windows versions, see Amazon EKS optimized Windows
AMI versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html)
in the I<Amazon EKS User Guide>.

If you specify C<launchTemplate>, and your launch template uses a
custom AMI, then don't specify C<releaseVersion>, or the node group
update will fail. For more information about using launch templates
with Amazon EKS, see Customizing managed nodes with launch templates
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the I<Amazon EKS User Guide>.



=head2 Version => Str

The Kubernetes version to update to. If no version is specified, then
the Kubernetes version of the node group does not change. You can
specify the Kubernetes version of the cluster to update the node group
to the latest AMI version of the cluster's Kubernetes version. If you
specify C<launchTemplate>, and your launch template uses a custom AMI,
then don't specify C<version>, or the node group update will fail. For
more information about using launch templates with Amazon EKS, see
Customizing managed nodes with launch templates
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the I<Amazon EKS User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNodegroupVersion in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

