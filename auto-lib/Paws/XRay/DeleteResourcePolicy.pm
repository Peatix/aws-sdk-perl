
package Paws::XRay::DeleteResourcePolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteResourcePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::DeleteResourcePolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $DeleteResourcePolicyResult = $xray->DeleteResourcePolicy(
      PolicyName       => 'MyPolicyName',
      PolicyRevisionId => 'MyPolicyRevisionId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the resource policy to delete.



=head2 PolicyRevisionId => Str

Specifies a specific policy revision to delete. Provide a
C<PolicyRevisionId> to ensure an atomic delete operation. If the
provided revision id does not match the latest policy revision id, an
C<InvalidPolicyRevisionIdException> exception is returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

