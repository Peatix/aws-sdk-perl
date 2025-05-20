
package Paws::VerifiedPermissions::BatchGetPolicy;
  use Moose;
  has Requests => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::BatchGetPolicyInputItem]', traits => ['NameInRequest'], request_name => 'requests' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::BatchGetPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::BatchGetPolicy - Arguments for method BatchGetPolicy on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetPolicy on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method BatchGetPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetPolicy.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $BatchGetPolicyOutput = $verifiedpermissions->BatchGetPolicy(
      Requests => [
        {
          PolicyId      => 'MyPolicyId',         # min: 1, max: 200
          PolicyStoreId => 'MyPolicyStoreId',    # min: 1, max: 200

        },
        ...
      ],

    );

    # Results:
    my $Errors  = $BatchGetPolicyOutput->Errors;
    my $Results = $BatchGetPolicyOutput->Results;

    # Returns a L<Paws::VerifiedPermissions::BatchGetPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/BatchGetPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Requests => ArrayRef[L<Paws::VerifiedPermissions::BatchGetPolicyInputItem>]

An array of up to 100 policies you want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetPolicy in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

