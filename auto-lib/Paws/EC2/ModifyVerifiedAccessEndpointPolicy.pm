
package Paws::EC2::ModifyVerifiedAccessEndpointPolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PolicyEnabled => (is => 'ro', isa => 'Bool');
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationRequest');
  has VerifiedAccessEndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVerifiedAccessEndpointPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVerifiedAccessEndpointPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessEndpointPolicy - Arguments for method ModifyVerifiedAccessEndpointPolicy on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVerifiedAccessEndpointPolicy on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVerifiedAccessEndpointPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVerifiedAccessEndpointPolicy.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVerifiedAccessEndpointPolicyResult =
      $ec2->ModifyVerifiedAccessEndpointPolicy(
      VerifiedAccessEndpointId => 'MyVerifiedAccessEndpointId',
      ClientToken              => 'MyString',                     # OPTIONAL
      DryRun                   => 1,                              # OPTIONAL
      PolicyDocument           => 'MyString',                     # OPTIONAL
      PolicyEnabled            => 1,                              # OPTIONAL
      SseSpecification         => {
        CustomerManagedKeyEnabled => 1,
        KmsKeyArn                 => 'MyKmsKeyArn',               # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $PolicyDocument =
      $ModifyVerifiedAccessEndpointPolicyResult->PolicyDocument;
    my $PolicyEnabled =
      $ModifyVerifiedAccessEndpointPolicyResult->PolicyEnabled;
    my $SseSpecification =
      $ModifyVerifiedAccessEndpointPolicyResult->SseSpecification;

    # Returns a L<Paws::EC2::ModifyVerifiedAccessEndpointPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVerifiedAccessEndpointPolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PolicyDocument => Str

The Verified Access policy document.



=head2 PolicyEnabled => Bool

The status of the Verified Access policy.



=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>

The options for server side encryption.



=head2 B<REQUIRED> VerifiedAccessEndpointId => Str

The ID of the Verified Access endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVerifiedAccessEndpointPolicy in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

