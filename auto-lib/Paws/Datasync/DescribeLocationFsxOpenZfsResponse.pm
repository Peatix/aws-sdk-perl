
package Paws::Datasync::DescribeLocationFsxOpenZfsResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Paws::Datasync::FsxProtocol');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxOpenZfsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the FSx for OpenZFS location was created.


=head2 LocationArn => Str

The ARN of the FSx for OpenZFS location that was described.


=head2 LocationUri => Str

The uniform resource identifier (URI) of the FSx for OpenZFS location
that was described.

Example: C<fsxz://us-west-2.fs-1234567890abcdef02/fsx/folderA/folder>


=head2 Protocol => L<Paws::Datasync::FsxProtocol>

The type of protocol that DataSync uses to access your file system.


=head2 SecurityGroupArns => ArrayRef[Str|Undef]

The ARNs of the security groups that are configured for the FSx for
OpenZFS file system.


=head2 _request_id => Str


=cut

1;