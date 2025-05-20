
package Paws::SSM::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has PolicyHash => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $PutResourcePolicyResponse = $ssm->PutResourcePolicy(
      Policy      => 'MyPolicy',
      ResourceArn => 'MyResourceArnString',
      PolicyHash  => 'MyPolicyHash',          # OPTIONAL
      PolicyId    => 'MyPolicyId',            # OPTIONAL
    );

    # Results:
    my $PolicyHash = $PutResourcePolicyResponse->PolicyHash;
    my $PolicyId   = $PutResourcePolicyResponse->PolicyId;

    # Returns a L<Paws::SSM::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

A policy you want to associate with a resource.



=head2 PolicyHash => Str

ID of the current policy version. The hash helps to prevent a situation
where multiple users attempt to overwrite a policy. You must provide
this hash when updating or deleting a policy.



=head2 PolicyId => Str

The policy ID.



=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) of the resource to which you want to attach
a policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

