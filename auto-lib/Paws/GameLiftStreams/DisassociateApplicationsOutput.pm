
package Paws::GameLiftStreams::DisassociateApplicationsOutput;
  use Moose;
  has ApplicationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::DisassociateApplicationsOutput

=head1 ATTRIBUTES


=head2 ApplicationArns => ArrayRef[Str|Undef]

A set of applications that are disassociated from this stream group.

This value is a set of either Amazon Resource Names (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or IDs that uniquely identify application resources. Format example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.


=head2 Arn => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.


=head2 _request_id => Str


=cut

