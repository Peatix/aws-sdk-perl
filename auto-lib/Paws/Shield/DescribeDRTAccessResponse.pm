
package Paws::Shield::DescribeDRTAccessResponse;
  use Moose;
  has LogBucketList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeDRTAccessResponse

=head1 ATTRIBUTES


=head2 LogBucketList => ArrayRef[Str|Undef]

The list of Amazon S3 buckets accessed by the SRT.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role the SRT used to access your
Amazon Web Services account.


=head2 _request_id => Str


=cut

1;