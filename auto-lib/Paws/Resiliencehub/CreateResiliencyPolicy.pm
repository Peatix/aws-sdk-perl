
package Paws::Resiliencehub::CreateResiliencyPolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataLocationConstraint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataLocationConstraint');
  has Policy => (is => 'ro', isa => 'Paws::Resiliencehub::DisruptionPolicy', traits => ['NameInRequest'], request_name => 'policy', required => 1);
  has PolicyDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDescription');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Resiliencehub::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Tier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResiliencyPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-resiliency-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::CreateResiliencyPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::CreateResiliencyPolicy - Arguments for method CreateResiliencyPolicy on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResiliencyPolicy on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method CreateResiliencyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResiliencyPolicy.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $CreateResiliencyPolicyResponse = $resiliencehub->CreateResiliencyPolicy(
      Policy => {
        'Software' => {
          RpoInSecs => 1,
          RtoInSecs => 1,

        },    # key: values: Software, Hardware, AZ, Region
      },
      PolicyName             => 'MyEntityName',
      Tier                   => 'MissionCritical',
      ClientToken            => 'MyClientToken',          # OPTIONAL
      DataLocationConstraint => 'AnyLocation',            # OPTIONAL
      PolicyDescription      => 'MyEntityDescription',    # OPTIONAL
      Tags                   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Policy = $CreateResiliencyPolicyResponse->Policy;

    # Returns a L<Paws::Resiliencehub::CreateResiliencyPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/CreateResiliencyPolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.



=head2 DataLocationConstraint => Str

Specifies a high-level geographical location constraint for where your
resilience policy data can be stored.

Valid values are: C<"AnyLocation">, C<"SameContinent">, C<"SameCountry">

=head2 B<REQUIRED> Policy => L<Paws::Resiliencehub::DisruptionPolicy>

The type of resiliency policy to be created, including the recovery
time objective (RTO) and recovery point objective (RPO) in seconds.



=head2 PolicyDescription => Str

Description of the resiliency policy.



=head2 B<REQUIRED> PolicyName => Str

Name of the resiliency policy.



=head2 Tags => L<Paws::Resiliencehub::TagMap>

Tags assigned to the resource. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key/value pair.



=head2 B<REQUIRED> Tier => Str

The tier for this resiliency policy, ranging from the highest severity
(C<MissionCritical>) to lowest (C<NonCritical>).

Valid values are: C<"MissionCritical">, C<"Critical">, C<"Important">, C<"CoreServices">, C<"NonCritical">, C<"NotApplicable">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResiliencyPolicy in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

