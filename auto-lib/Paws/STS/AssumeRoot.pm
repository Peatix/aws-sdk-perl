
package Paws::STS::AssumeRoot;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has TargetPrincipal => (is => 'ro', isa => 'Str', required => 1);
  has TaskPolicyArn => (is => 'ro', isa => 'Paws::STS::PolicyDescriptorType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::AssumeRootResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRootResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoot - Arguments for method AssumeRoot on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssumeRoot on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method AssumeRoot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssumeRoot.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    my $AssumeRootResponse = $sts->AssumeRoot(
      TargetPrincipal => 'MyTargetPrincipalType',
      TaskPolicyArn   => {
        Arn => 'MyarnType',    # min: 20, max: 2048; OPTIONAL
      },
      DurationSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $Credentials    = $AssumeRootResponse->Credentials;
    my $SourceIdentity = $AssumeRootResponse->SourceIdentity;

    # Returns a L<Paws::STS::AssumeRootResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/AssumeRoot>

=head1 ATTRIBUTES


=head2 DurationSeconds => Int

The duration, in seconds, of the privileged session. The value can
range from 0 seconds up to the maximum session duration of 900 seconds
(15 minutes). If you specify a value higher than this setting, the
operation fails.

By default, the value is set to C<900> seconds.



=head2 B<REQUIRED> TargetPrincipal => Str

The member account principal ARN or account ID.



=head2 B<REQUIRED> TaskPolicyArn => L<Paws::STS::PolicyDescriptorType>

The identity based policy that scopes the session to the privileged
tasks that can be performed. You can use one of following Amazon Web
Services managed policies to scope root session actions.

=over

=item *

IAMAuditRootUserCredentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMAuditRootUserCredentials)

=item *

IAMCreateRootUserPassword
(https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMCreateRootUserPassword)

=item *

IAMDeleteRootUserCredentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMDeleteRootUserCredentials)

=item *

S3UnlockBucketPolicy
(https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-S3UnlockBucketPolicy)

=item *

SQSUnlockQueuePolicy
(https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-SQSUnlockQueuePolicy)

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssumeRoot in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

