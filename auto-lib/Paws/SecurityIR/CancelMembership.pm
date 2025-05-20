
package Paws::SecurityIR::CancelMembership;
  use Moose;
  has MembershipId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/membership/{membershipId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::CancelMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CancelMembership - Arguments for method CancelMembership on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelMembership on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method CancelMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelMembership.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $CancelMembershipResponse = $security -ir->CancelMembership(
      MembershipId => 'MyMembershipId',

    );

    # Results:
    my $MembershipId = $CancelMembershipResponse->MembershipId;

    # Returns a L<Paws::SecurityIR::CancelMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/CancelMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipId => Str

Required element used in combination with CancelMembershipRequest to
identify the membership ID to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelMembership in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

