
package Paws::EntityResolution::PutPolicy;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::PutPolicyOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::PutPolicy - Arguments for method PutPolicy on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPolicy on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method PutPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPolicy.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $PutPolicyOutput = $entityresolution->PutPolicy(
      Arn    => 'MyVeniceGlobalArn',
      Policy => 'MyPolicyDocument',
      Token  => 'MyPolicyToken',       # OPTIONAL
    );

    # Results:
    my $Arn    = $PutPolicyOutput->Arn;
    my $Policy = $PutPolicyOutput->Policy;
    my $Token  = $PutPolicyOutput->Token;

    # Returns a L<Paws::EntityResolution::PutPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/PutPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource for which the policy
needs to be updated.



=head2 B<REQUIRED> Policy => Str

The resource-based policy.

If you set the value of the C<effect> parameter in the C<policy> to
C<Deny> for the C<PutPolicy> operation, you must also set the value of
the C<effect> parameter to C<Deny> for the C<AddPolicyStatement>
operation.



=head2 Token => Str

A unique identifier for the current revision of the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPolicy in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

