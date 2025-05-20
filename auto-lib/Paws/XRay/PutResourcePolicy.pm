
package Paws::XRay::PutResourcePolicy;
  use Moose;
  has BypassPolicyLockoutCheck => (is => 'ro', isa => 'Bool');
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutResourcePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::PutResourcePolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $PutResourcePolicyResult = $xray->PutResourcePolicy(
      PolicyDocument           => 'MyPolicyDocument',
      PolicyName               => 'MyPolicyName',
      BypassPolicyLockoutCheck => 1,                       # OPTIONAL
      PolicyRevisionId         => 'MyPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $ResourcePolicy = $PutResourcePolicyResult->ResourcePolicy;

    # Returns a L<Paws::XRay::PutResourcePolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutCheck => Bool

A flag to indicate whether to bypass the resource policy lockout safety
check.

Setting this value to true increases the risk that the policy becomes
unmanageable. Do not set this value to true indiscriminately.

Use this parameter only when you include a policy in the request and
you intend to prevent the principal that is making the request from
making a subsequent C<PutResourcePolicy> request.

The default value is false.



=head2 B<REQUIRED> PolicyDocument => Str

The resource policy document, which can be up to 5kb in size.



=head2 B<REQUIRED> PolicyName => Str

The name of the resource policy. Must be unique within a specific
Amazon Web Services account.



=head2 PolicyRevisionId => Str

Specifies a specific policy revision, to ensure an atomic create
operation. By default the resource policy is created if it does not
exist, or updated with an incremented revision id. The revision id is
unique to each policy in the account.

If the policy revision id does not match the latest revision id, the
operation will fail with an C<InvalidPolicyRevisionIdException>
exception. You can also provide a C<PolicyRevisionId> of 0. In this
case, the operation will fail with an
C<InvalidPolicyRevisionIdException> exception if a resource policy with
the same name already exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

