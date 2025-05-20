
package Paws::CloudTrail::PutResourcePolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $PutResourcePolicyResponse = $cloudtrail->PutResourcePolicy(
      ResourceArn    => 'MyResourceArn',
      ResourcePolicy => 'MyResourcePolicy',

    );

    # Results:
    my $DelegatedAdminResourcePolicy =
      $PutResourcePolicyResponse->DelegatedAdminResourcePolicy;
    my $ResourceArn    = $PutResourcePolicyResponse->ResourceArn;
    my $ResourcePolicy = $PutResourcePolicyResponse->ResourcePolicy;

    # Returns a L<Paws::CloudTrail::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the CloudTrail event data store,
dashboard, or channel attached to the resource-based policy.

Example event data store ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE>

Example dashboard ARN format:
C<arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash>

Example channel ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890>



=head2 B<REQUIRED> ResourcePolicy => Str

A JSON-formatted string for an Amazon Web Services resource-based
policy.

For example resource-based policies, see CloudTrail resource-based
policy examples
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html)
in the I<CloudTrail User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

