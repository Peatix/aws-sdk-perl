
package Paws::EC2::ModifyVerifiedAccessInstance;
  use Moose;
  has CidrEndpointsCustomSubDomain => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVerifiedAccessInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVerifiedAccessInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessInstance - Arguments for method ModifyVerifiedAccessInstance on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVerifiedAccessInstance on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVerifiedAccessInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVerifiedAccessInstance.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVerifiedAccessInstanceResult = $ec2->ModifyVerifiedAccessInstance(
      VerifiedAccessInstanceId     => 'MyVerifiedAccessInstanceId',
      CidrEndpointsCustomSubDomain => 'MyString',                     # OPTIONAL
      ClientToken                  => 'MyString',                     # OPTIONAL
      Description                  => 'MyString',                     # OPTIONAL
      DryRun                       => 1,                              # OPTIONAL
    );

    # Results:
    my $VerifiedAccessInstance =
      $ModifyVerifiedAccessInstanceResult->VerifiedAccessInstance;

    # Returns a L<Paws::EC2::ModifyVerifiedAccessInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVerifiedAccessInstance>

=head1 ATTRIBUTES


=head2 CidrEndpointsCustomSubDomain => Str

The custom subdomain.



=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the Verified Access instance.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> VerifiedAccessInstanceId => Str

The ID of the Verified Access instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVerifiedAccessInstance in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

