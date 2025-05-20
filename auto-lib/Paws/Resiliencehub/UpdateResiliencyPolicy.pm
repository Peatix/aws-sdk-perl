
package Paws::Resiliencehub::UpdateResiliencyPolicy;
  use Moose;
  has DataLocationConstraint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataLocationConstraint');
  has Policy => (is => 'ro', isa => 'Paws::Resiliencehub::DisruptionPolicy', traits => ['NameInRequest'], request_name => 'policy');
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn', required => 1);
  has PolicyDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDescription');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName');
  has Tier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResiliencyPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-resiliency-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::UpdateResiliencyPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::UpdateResiliencyPolicy - Arguments for method UpdateResiliencyPolicy on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResiliencyPolicy on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method UpdateResiliencyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResiliencyPolicy.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $UpdateResiliencyPolicyResponse = $resiliencehub->UpdateResiliencyPolicy(
      PolicyArn              => 'MyArn',
      DataLocationConstraint => 'AnyLocation',    # OPTIONAL
      Policy                 => {
        'Software' => {
          RpoInSecs => 1,
          RtoInSecs => 1,

        },    # key: values: Software, Hardware, AZ, Region
      },    # OPTIONAL
      PolicyDescription => 'MyEntityDescription',    # OPTIONAL
      PolicyName        => 'MyEntityName',           # OPTIONAL
      Tier              => 'MissionCritical',        # OPTIONAL
    );

    # Results:
    my $Policy = $UpdateResiliencyPolicyResponse->Policy;

    # Returns a L<Paws::Resiliencehub::UpdateResiliencyPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/UpdateResiliencyPolicy>

=head1 ATTRIBUTES


=head2 DataLocationConstraint => Str

Specifies a high-level geographical location constraint for where your
resilience policy data can be stored.

Valid values are: C<"AnyLocation">, C<"SameContinent">, C<"SameCountry">

=head2 Policy => L<Paws::Resiliencehub::DisruptionPolicy>

Resiliency policy to be created, including the recovery time objective
(RTO) and recovery point objective (RPO) in seconds.



=head2 B<REQUIRED> PolicyArn => Str

Amazon Resource Name (ARN) of the resiliency policy. The format for
this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:resiliency-policy/C<policy-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 PolicyDescription => Str

Description of the resiliency policy.



=head2 PolicyName => Str

Name of the resiliency policy.



=head2 Tier => Str

The tier for this resiliency policy, ranging from the highest severity
(C<MissionCritical>) to lowest (C<NonCritical>).

Valid values are: C<"MissionCritical">, C<"Critical">, C<"Important">, C<"CoreServices">, C<"NonCritical">, C<"NotApplicable">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResiliencyPolicy in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

