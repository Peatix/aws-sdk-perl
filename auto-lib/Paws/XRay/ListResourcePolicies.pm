
package Paws::XRay::ListResourcePolicies;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourcePolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListResourcePolicies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::ListResourcePoliciesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ListResourcePolicies - Arguments for method ListResourcePolicies on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourcePolicies on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method ListResourcePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourcePolicies.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $ListResourcePoliciesResult = $xray->ListResourcePolicies(
      NextToken => 'MyResourcePolicyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListResourcePoliciesResult->NextToken;
    my $ResourcePolicies = $ListResourcePoliciesResult->ResourcePolicies;

    # Returns a L<Paws::XRay::ListResourcePoliciesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/ListResourcePolicies>

=head1 ATTRIBUTES


=head2 NextToken => Str

Not currently supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourcePolicies in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

