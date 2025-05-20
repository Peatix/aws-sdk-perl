
package Paws::Datasync::DescribeLocationFsxLustreResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxLustreResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the FSx for Lustre location was created.


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the FSx for Lustre location that was
described.


=head2 LocationUri => Str

The URI of the FSx for Lustre location that was described.


=head2 SecurityGroupArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the security groups that are
configured for the FSx for Lustre file system.


=head2 _request_id => Str


=cut

1;