
package Paws::CloudHSMv2::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $PutResourcePolicyResponse = $cloudhsmv2->PutResourcePolicy(
      Policy      => 'MyResourcePolicy',    # OPTIONAL
      ResourceArn => 'MyCloudHsmArn',       # OPTIONAL
    );

    # Results:
    my $Policy      = $PutResourcePolicyResponse->Policy;
    my $ResourceArn = $PutResourcePolicyResponse->ResourceArn;

    # Returns a L<Paws::CloudHSMv2::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 Policy => Str

The policy you want to associate with a resource.

For an example policy, see Working with shared backups
(https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html) in
the CloudHSM User Guide



=head2 ResourceArn => Str

Amazon Resource Name (ARN) of the resource to which you want to attach
a policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

