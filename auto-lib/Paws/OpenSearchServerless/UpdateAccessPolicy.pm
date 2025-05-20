
package Paws::OpenSearchServerless::UpdateAccessPolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' );
  has PolicyVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyVersion' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::UpdateAccessPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateAccessPolicy - Arguments for method UpdateAccessPolicy on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccessPolicy on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method UpdateAccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccessPolicy.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $UpdateAccessPolicyResponse = $aoss->UpdateAccessPolicy(
      Name          => 'MyPolicyName',
      PolicyVersion => 'MyPolicyVersion',
      Type          => 'data',
      ClientToken   => 'MyClientToken',          # OPTIONAL
      Description   => 'MyPolicyDescription',    # OPTIONAL
      Policy        => 'MyPolicyDocument',       # OPTIONAL
    );

    # Results:
    my $AccessPolicyDetail = $UpdateAccessPolicyResponse->AccessPolicyDetail;

   # Returns a L<Paws::OpenSearchServerless::UpdateAccessPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/UpdateAccessPolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 Description => Str

A description of the policy. Typically used to store information about
the permissions defined in the policy.



=head2 B<REQUIRED> Name => Str

The name of the policy.



=head2 Policy => Str

The JSON policy document to use as the content for the policy.



=head2 B<REQUIRED> PolicyVersion => Str

The version of the policy being updated.



=head2 B<REQUIRED> Type => Str

The type of policy.

Valid values are: C<"data">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccessPolicy in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

