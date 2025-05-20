
package Paws::SageMaker::DescribeNotebookInstanceOutput;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalCodeRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultCodeRepository => (is => 'ro', isa => 'Str');
  has DirectInternetAccess => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has InstanceMetadataServiceConfiguration => (is => 'ro', isa => 'Paws::SageMaker::InstanceMetadataServiceConfiguration');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NotebookInstanceArn => (is => 'ro', isa => 'Str');
  has NotebookInstanceLifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str');
  has NotebookInstanceStatus => (is => 'ro', isa => 'Str');
  has PlatformIdentifier => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has RootAccess => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeNotebookInstanceOutput

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

This parameter is no longer supported. Elastic Inference (EI) is no
longer available.

This parameter was used to specify a list of the EI instance types
associated with this notebook instance.


=head2 AdditionalCodeRepositories => ArrayRef[Str|Undef]

An array of up to three Git repositories associated with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in Amazon Web
Services CodeCommit
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. These repositories are cloned at the
same level as the default repository of your notebook instance. For
more information, see Associating Git Repositories with SageMaker AI
Notebook Instances
(https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).


=head2 CreationTime => Str

A timestamp. Use this parameter to return the time when the notebook
instance was created


=head2 DefaultCodeRepository => Str

The Git repository associated with the notebook instance as its default
code repository. This can be either the name of a Git repository stored
as a resource in your account, or the URL of a Git repository in Amazon
Web Services CodeCommit
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. When you open a notebook instance, it
opens in the directory that contains this repository. For more
information, see Associating Git Repositories with SageMaker AI
Notebook Instances
(https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).


=head2 DirectInternetAccess => Str

Describes whether SageMaker AI provides internet access to the notebook
instance. If this value is set to I<Disabled>, the notebook instance
does not have internet access, and cannot connect to SageMaker AI
training and endpoint services.

For more information, see Notebook Instances Are Internet-Enabled by
Default
(https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access).

Valid values are: C<"Enabled">, C<"Disabled">
=head2 FailureReason => Str

If status is C<Failed>, the reason it failed.


=head2 InstanceMetadataServiceConfiguration => L<Paws::SageMaker::InstanceMetadataServiceConfiguration>

Information on the IMDS configuration of the notebook instance


=head2 InstanceType => Str

The type of ML compute instance running on the notebook instance.

Valid values are: C<"ml.t2.medium">, C<"ml.t2.large">, C<"ml.t2.xlarge">, C<"ml.t2.2xlarge">, C<"ml.t3.medium">, C<"ml.t3.large">, C<"ml.t3.xlarge">, C<"ml.t3.2xlarge">, C<"ml.m4.xlarge">, C<"ml.m4.2xlarge">, C<"ml.m4.4xlarge">, C<"ml.m4.10xlarge">, C<"ml.m4.16xlarge">, C<"ml.m5.xlarge">, C<"ml.m5.2xlarge">, C<"ml.m5.4xlarge">, C<"ml.m5.12xlarge">, C<"ml.m5.24xlarge">, C<"ml.m5d.large">, C<"ml.m5d.xlarge">, C<"ml.m5d.2xlarge">, C<"ml.m5d.4xlarge">, C<"ml.m5d.8xlarge">, C<"ml.m5d.12xlarge">, C<"ml.m5d.16xlarge">, C<"ml.m5d.24xlarge">, C<"ml.c4.xlarge">, C<"ml.c4.2xlarge">, C<"ml.c4.4xlarge">, C<"ml.c4.8xlarge">, C<"ml.c5.xlarge">, C<"ml.c5.2xlarge">, C<"ml.c5.4xlarge">, C<"ml.c5.9xlarge">, C<"ml.c5.18xlarge">, C<"ml.c5d.xlarge">, C<"ml.c5d.2xlarge">, C<"ml.c5d.4xlarge">, C<"ml.c5d.9xlarge">, C<"ml.c5d.18xlarge">, C<"ml.p2.xlarge">, C<"ml.p2.8xlarge">, C<"ml.p2.16xlarge">, C<"ml.p3.2xlarge">, C<"ml.p3.8xlarge">, C<"ml.p3.16xlarge">, C<"ml.p3dn.24xlarge">, C<"ml.g4dn.xlarge">, C<"ml.g4dn.2xlarge">, C<"ml.g4dn.4xlarge">, C<"ml.g4dn.8xlarge">, C<"ml.g4dn.12xlarge">, C<"ml.g4dn.16xlarge">, C<"ml.r5.large">, C<"ml.r5.xlarge">, C<"ml.r5.2xlarge">, C<"ml.r5.4xlarge">, C<"ml.r5.8xlarge">, C<"ml.r5.12xlarge">, C<"ml.r5.16xlarge">, C<"ml.r5.24xlarge">, C<"ml.g5.xlarge">, C<"ml.g5.2xlarge">, C<"ml.g5.4xlarge">, C<"ml.g5.8xlarge">, C<"ml.g5.16xlarge">, C<"ml.g5.12xlarge">, C<"ml.g5.24xlarge">, C<"ml.g5.48xlarge">, C<"ml.inf1.xlarge">, C<"ml.inf1.2xlarge">, C<"ml.inf1.6xlarge">, C<"ml.inf1.24xlarge">, C<"ml.trn1.2xlarge">, C<"ml.trn1.32xlarge">, C<"ml.trn1n.32xlarge">, C<"ml.inf2.xlarge">, C<"ml.inf2.8xlarge">, C<"ml.inf2.24xlarge">, C<"ml.inf2.48xlarge">, C<"ml.p4d.24xlarge">, C<"ml.p4de.24xlarge">, C<"ml.p5.48xlarge">, C<"ml.m6i.large">, C<"ml.m6i.xlarge">, C<"ml.m6i.2xlarge">, C<"ml.m6i.4xlarge">, C<"ml.m6i.8xlarge">, C<"ml.m6i.12xlarge">, C<"ml.m6i.16xlarge">, C<"ml.m6i.24xlarge">, C<"ml.m6i.32xlarge">, C<"ml.m7i.large">, C<"ml.m7i.xlarge">, C<"ml.m7i.2xlarge">, C<"ml.m7i.4xlarge">, C<"ml.m7i.8xlarge">, C<"ml.m7i.12xlarge">, C<"ml.m7i.16xlarge">, C<"ml.m7i.24xlarge">, C<"ml.m7i.48xlarge">, C<"ml.c6i.large">, C<"ml.c6i.xlarge">, C<"ml.c6i.2xlarge">, C<"ml.c6i.4xlarge">, C<"ml.c6i.8xlarge">, C<"ml.c6i.12xlarge">, C<"ml.c6i.16xlarge">, C<"ml.c6i.24xlarge">, C<"ml.c6i.32xlarge">, C<"ml.c7i.large">, C<"ml.c7i.xlarge">, C<"ml.c7i.2xlarge">, C<"ml.c7i.4xlarge">, C<"ml.c7i.8xlarge">, C<"ml.c7i.12xlarge">, C<"ml.c7i.16xlarge">, C<"ml.c7i.24xlarge">, C<"ml.c7i.48xlarge">, C<"ml.r6i.large">, C<"ml.r6i.xlarge">, C<"ml.r6i.2xlarge">, C<"ml.r6i.4xlarge">, C<"ml.r6i.8xlarge">, C<"ml.r6i.12xlarge">, C<"ml.r6i.16xlarge">, C<"ml.r6i.24xlarge">, C<"ml.r6i.32xlarge">, C<"ml.r7i.large">, C<"ml.r7i.xlarge">, C<"ml.r7i.2xlarge">, C<"ml.r7i.4xlarge">, C<"ml.r7i.8xlarge">, C<"ml.r7i.12xlarge">, C<"ml.r7i.16xlarge">, C<"ml.r7i.24xlarge">, C<"ml.r7i.48xlarge">, C<"ml.m6id.large">, C<"ml.m6id.xlarge">, C<"ml.m6id.2xlarge">, C<"ml.m6id.4xlarge">, C<"ml.m6id.8xlarge">, C<"ml.m6id.12xlarge">, C<"ml.m6id.16xlarge">, C<"ml.m6id.24xlarge">, C<"ml.m6id.32xlarge">, C<"ml.c6id.large">, C<"ml.c6id.xlarge">, C<"ml.c6id.2xlarge">, C<"ml.c6id.4xlarge">, C<"ml.c6id.8xlarge">, C<"ml.c6id.12xlarge">, C<"ml.c6id.16xlarge">, C<"ml.c6id.24xlarge">, C<"ml.c6id.32xlarge">, C<"ml.r6id.large">, C<"ml.r6id.xlarge">, C<"ml.r6id.2xlarge">, C<"ml.r6id.4xlarge">, C<"ml.r6id.8xlarge">, C<"ml.r6id.12xlarge">, C<"ml.r6id.16xlarge">, C<"ml.r6id.24xlarge">, C<"ml.r6id.32xlarge">, C<"ml.g6.xlarge">, C<"ml.g6.2xlarge">, C<"ml.g6.4xlarge">, C<"ml.g6.8xlarge">, C<"ml.g6.12xlarge">, C<"ml.g6.16xlarge">, C<"ml.g6.24xlarge">, C<"ml.g6.48xlarge">
=head2 KmsKeyId => Str

The Amazon Web Services KMS key ID SageMaker AI uses to encrypt data
when storing it on the ML storage volume attached to the instance.


=head2 LastModifiedTime => Str

A timestamp. Use this parameter to retrieve the time when the notebook
instance was last modified.


=head2 NetworkInterfaceId => Str

The network interface IDs that SageMaker AI created at the time of
creating the instance.


=head2 NotebookInstanceArn => Str

The Amazon Resource Name (ARN) of the notebook instance.


=head2 NotebookInstanceLifecycleConfigName => Str

Returns the name of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html)


=head2 NotebookInstanceName => Str

The name of the SageMaker AI notebook instance.


=head2 NotebookInstanceStatus => Str

The status of the notebook instance.

Valid values are: C<"Pending">, C<"InService">, C<"Stopping">, C<"Stopped">, C<"Failed">, C<"Deleting">, C<"Updating">
=head2 PlatformIdentifier => Str

The platform identifier of the notebook instance runtime environment.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with the
instance.


=head2 RootAccess => Str

Whether root access is enabled or disabled for users of the notebook
instance.

Lifecycle configurations need root access to be able to set up a
notebook instance. Because of this, lifecycle configurations associated
with a notebook instance always run with root access even if you
disable root access for users.

Valid values are: C<"Enabled">, C<"Disabled">
=head2 SecurityGroups => ArrayRef[Str|Undef]

The IDs of the VPC security groups.


=head2 SubnetId => Str

The ID of the VPC subnet.


=head2 Url => Str

The URL that you use to connect to the Jupyter notebook that is running
in your notebook instance.


=head2 VolumeSizeInGB => Int

The size, in GB, of the ML storage volume attached to the notebook
instance.


=head2 _request_id => Str


=cut

1;