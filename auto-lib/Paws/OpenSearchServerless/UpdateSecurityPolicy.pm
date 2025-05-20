
package Paws::OpenSearchServerless::UpdateSecurityPolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' );
  has PolicyVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyVersion' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::UpdateSecurityPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateSecurityPolicy - Arguments for method UpdateSecurityPolicy on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityPolicy on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method UpdateSecurityPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityPolicy.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $UpdateSecurityPolicyResponse = $aoss->UpdateSecurityPolicy(
      Name          => 'MyPolicyName',
      PolicyVersion => 'MyPolicyVersion',
      Type          => 'encryption',
      ClientToken   => 'MyClientToken',          # OPTIONAL
      Description   => 'MyPolicyDescription',    # OPTIONAL
      Policy        => 'MyPolicyDocument',       # OPTIONAL
    );

    # Results:
    my $SecurityPolicyDetail =
      $UpdateSecurityPolicyResponse->SecurityPolicyDetail;

 # Returns a L<Paws::OpenSearchServerless::UpdateSecurityPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/UpdateSecurityPolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 Description => Str

A description of the policy. Typically used to store information about
the permissions defined in the policy.



=head2 B<REQUIRED> Name => Str

The name of the policy.



=head2 Policy => Str

The JSON policy document to use as the content for the new policy.



=head2 B<REQUIRED> PolicyVersion => Str

The version of the policy being updated.



=head2 B<REQUIRED> Type => Str

The type of access policy.

Valid values are: C<"encryption">, C<"network">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityPolicy in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

