
package Paws::OpenSearchServerless::CreateLifecyclePolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLifecyclePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::CreateLifecyclePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateLifecyclePolicy - Arguments for method CreateLifecyclePolicy on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLifecyclePolicy on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method CreateLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLifecyclePolicy.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $CreateLifecyclePolicyResponse = $aoss->CreateLifecyclePolicy(
      Name        => 'MyPolicyName',
      Policy      => 'MyPolicyDocument',
      Type        => 'retention',
      ClientToken => 'MyClientToken',          # OPTIONAL
      Description => 'MyPolicyDescription',    # OPTIONAL
    );

    # Results:
    my $LifecyclePolicyDetail =
      $CreateLifecyclePolicyResponse->LifecyclePolicyDetail;

# Returns a L<Paws::OpenSearchServerless::CreateLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/CreateLifecyclePolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure idempotency of the
request.



=head2 Description => Str

A description of the lifecycle policy.



=head2 B<REQUIRED> Name => Str

The name of the lifecycle policy.



=head2 B<REQUIRED> Policy => Str

The JSON policy document to use as the content for the lifecycle
policy.



=head2 B<REQUIRED> Type => Str

The type of lifecycle policy.

Valid values are: C<"retention">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLifecyclePolicy in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

