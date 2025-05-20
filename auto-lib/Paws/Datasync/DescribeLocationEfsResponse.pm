
package Paws::Datasync::DescribeLocationEfsResponse;
  use Moose;
  has AccessPointArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Ec2Config => (is => 'ro', isa => 'Paws::Datasync::Ec2Config');
  has FileSystemAccessRoleArn => (is => 'ro', isa => 'Str');
  has InTransitEncryption => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationEfsResponse

=head1 ATTRIBUTES


=head2 AccessPointArn => Str

The ARN of the access point that DataSync uses to access the Amazon EFS
file system.

For more information, see Accessing restricted file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam).


=head2 CreationTime => Str

The time that the location was created.


=head2 Ec2Config => L<Paws::Datasync::Ec2Config>




=head2 FileSystemAccessRoleArn => Str

The Identity and Access Management (IAM) role that allows DataSync to
access your Amazon EFS file system.

For more information, see Creating a DataSync IAM role for file system
access
(https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role).


=head2 InTransitEncryption => Str

Indicates whether DataSync uses Transport Layer Security (TLS)
encryption when transferring data to or from the Amazon EFS file
system.

Valid values are: C<"NONE">, C<"TLS1_2">
=head2 LocationArn => Str

The ARN of the Amazon EFS file system location.


=head2 LocationUri => Str

The URL of the Amazon EFS file system location.


=head2 _request_id => Str


=cut

1;