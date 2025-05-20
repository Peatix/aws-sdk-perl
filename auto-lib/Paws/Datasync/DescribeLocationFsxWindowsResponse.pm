
package Paws::Datasync::DescribeLocationFsxWindowsResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has User => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxWindowsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the FSx for Windows File Server location was created.


=head2 Domain => Str

The name of the Microsoft Active Directory domain that the FSx for
Windows File Server file system belongs to.


=head2 LocationArn => Str

The ARN of the FSx for Windows File Server location.


=head2 LocationUri => Str

The uniform resource identifier (URI) of the FSx for Windows File
Server location.


=head2 SecurityGroupArns => ArrayRef[Str|Undef]

The ARNs of the Amazon EC2 security groups that provide access to your
file system's preferred subnet.

For information about configuring security groups for file system
access, see the I<Amazon FSx for Windows File Server User Guide>
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/limit-access-security-groups.html).


=head2 User => Str

The user with the permissions to mount and access the FSx for Windows
File Server file system.


=head2 _request_id => Str


=cut

1;