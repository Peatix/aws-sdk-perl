
package Paws::CloudWatchLogs::GetDataProtectionPolicyResponse;
  use Moose;
  has LastUpdatedTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastUpdatedTime' );
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' );
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetDataProtectionPolicyResponse

=head1 ATTRIBUTES


=head2 LastUpdatedTime => Int

The date and time that this policy was most recently updated.


=head2 LogGroupIdentifier => Str

The log group name or ARN that you specified in your request.


=head2 PolicyDocument => Str

The data protection policy document for this log group.


=head2 _request_id => Str


=cut

1;