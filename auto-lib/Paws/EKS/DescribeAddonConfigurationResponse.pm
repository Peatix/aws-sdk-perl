
package Paws::EKS::DescribeAddonConfigurationResponse;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addonName');
  has AddonVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addonVersion');
  has ConfigurationSchema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationSchema');
  has PodIdentityConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::EKS::AddonPodIdentityConfiguration]', traits => ['NameInRequest'], request_name => 'podIdentityConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeAddonConfigurationResponse

=head1 ATTRIBUTES


=head2 AddonName => Str

The name of the add-on.


=head2 AddonVersion => Str

The version of the add-on. The version must match one of the versions
returned by C<DescribeAddonVersions>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html).


=head2 ConfigurationSchema => Str

A JSON schema that's used to validate the configuration values you
provide when an add-on is created or updated.


=head2 PodIdentityConfiguration => ArrayRef[L<Paws::EKS::AddonPodIdentityConfiguration>]

The Kubernetes service account name used by the addon, and any
suggested IAM policies. Use this information to create an IAM Role for
the Addon.


=head2 _request_id => Str


=cut

