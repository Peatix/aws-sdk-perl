
package Paws::CloudTrail::GetResourcePolicyResponse;
  use Moose;
  has DelegatedAdminResourcePolicy => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 DelegatedAdminResourcePolicy => Str

The default resource-based policy that is automatically generated for
the delegated administrator of an Organizations organization. This
policy will be evaluated in tandem with any policy you submit for the
resource. For more information about this policy, see Default resource
policy for delegated administrators
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html#cloudtrail-lake-organizations-eds-rbp).


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the CloudTrail event data store,
dashboard, or channel attached to resource-based policy.

Example event data store ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE>

Example dashboard ARN format:
C<arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash>

Example channel ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890>


=head2 ResourcePolicy => Str

A JSON-formatted string that contains the resource-based policy
attached to the CloudTrail event data store, dashboard, or channel.


=head2 _request_id => Str


=cut

1;