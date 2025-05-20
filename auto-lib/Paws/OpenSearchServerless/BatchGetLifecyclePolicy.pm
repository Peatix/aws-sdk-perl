
package Paws::OpenSearchServerless::BatchGetLifecyclePolicy;
  use Moose;
  has Identifiers => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::LifecyclePolicyIdentifier]', traits => ['NameInRequest'], request_name => 'identifiers' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetLifecyclePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::BatchGetLifecyclePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::BatchGetLifecyclePolicy - Arguments for method BatchGetLifecyclePolicy on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetLifecyclePolicy on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method BatchGetLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetLifecyclePolicy.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $BatchGetLifecyclePolicyResponse = $aoss->BatchGetLifecyclePolicy(
      Identifiers => [
        {
          Name => 'MyPolicyName',    # min: 3, max: 32
          Type => 'retention',       # values: retention

        },
        ...
      ],

    );

    # Results:
    my $LifecyclePolicyDetails =
      $BatchGetLifecyclePolicyResponse->LifecyclePolicyDetails;
    my $LifecyclePolicyErrorDetails =
      $BatchGetLifecyclePolicyResponse->LifecyclePolicyErrorDetails;

# Returns a L<Paws::OpenSearchServerless::BatchGetLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/BatchGetLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifiers => ArrayRef[L<Paws::OpenSearchServerless::LifecyclePolicyIdentifier>]

The unique identifiers of policy types and policy names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetLifecyclePolicy in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

