
package Paws::CleanRoomsML::PutConfiguredAudienceModelPolicy;
  use Moose;
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredAudienceModelArn', required => 1);
  has ConfiguredAudienceModelPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelPolicy', required => 1);
  has PolicyExistenceCondition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyExistenceCondition');
  has PreviousPolicyHash => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'previousPolicyHash');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfiguredAudienceModelPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configured-audience-model/{configuredAudienceModelArn}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::PutConfiguredAudienceModelPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::PutConfiguredAudienceModelPolicy - Arguments for method PutConfiguredAudienceModelPolicy on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfiguredAudienceModelPolicy on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method PutConfiguredAudienceModelPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfiguredAudienceModelPolicy.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $PutConfiguredAudienceModelPolicyResponse =
      $cleanrooms -ml->PutConfiguredAudienceModelPolicy(
      ConfiguredAudienceModelArn    => 'MyConfiguredAudienceModelArn',
      ConfiguredAudienceModelPolicy => 'MyResourcePolicy',
      PolicyExistenceCondition      => 'POLICY_MUST_EXIST',           # OPTIONAL
      PreviousPolicyHash            => 'MyHash',                      # OPTIONAL
      );

    # Results:
    my $ConfiguredAudienceModelPolicy =
      $PutConfiguredAudienceModelPolicyResponse->ConfiguredAudienceModelPolicy;
    my $PolicyHash = $PutConfiguredAudienceModelPolicyResponse->PolicyHash;

# Returns a L<Paws::CleanRoomsML::PutConfiguredAudienceModelPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/PutConfiguredAudienceModelPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configured audience model that
the resource policy will govern.



=head2 B<REQUIRED> ConfiguredAudienceModelPolicy => Str

The IAM resource policy.



=head2 PolicyExistenceCondition => Str

Use this to prevent unexpected concurrent modification of the policy.

Valid values are: C<"POLICY_MUST_EXIST">, C<"POLICY_MUST_NOT_EXIST">

=head2 PreviousPolicyHash => Str

A cryptographic hash of the contents of the policy used to prevent
unexpected concurrent modification of the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfiguredAudienceModelPolicy in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

