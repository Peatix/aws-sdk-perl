
package Paws::ImageBuilder::UpdateLifecyclePolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRole', required => 1);
  has LifecyclePolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyArn', required => 1);
  has PolicyDetails => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::LifecyclePolicyDetail]', traits => ['NameInRequest'], request_name => 'policyDetails', required => 1);
  has ResourceSelection => (is => 'ro', isa => 'Paws::ImageBuilder::LifecyclePolicyResourceSelection', traits => ['NameInRequest'], request_name => 'resourceSelection', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLifecyclePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLifecyclePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::UpdateLifecyclePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::UpdateLifecyclePolicy - Arguments for method UpdateLifecyclePolicy on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLifecyclePolicy on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method UpdateLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLifecyclePolicy.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $UpdateLifecyclePolicyResponse = $imagebuilder->UpdateLifecyclePolicy(
      ClientToken        => 'MyClientToken',
      ExecutionRole      => 'MyRoleNameOrArn',
      LifecyclePolicyArn => 'MyLifecyclePolicyArn',
      PolicyDetails      => [
        {
          Action => {
            Type             => 'DELETE',   # values: DELETE, DEPRECATE, DISABLE
            IncludeResources => {
              Amis       => 1,              # OPTIONAL
              Containers => 1,              # OPTIONAL
              Snapshots  => 1,              # OPTIONAL
            },    # OPTIONAL
          },
          Filter => {
            Type          => 'AGE',    # values: AGE, COUNT
            Value         => 1,        # min: 1, max: 1000
            RetainAtLeast => 1,        # min: 1, max: 10; OPTIONAL
            Unit => 'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
          },
          ExclusionRules => {
            Amis => {
              IsPublic     => 1,    # OPTIONAL
              LastLaunched => {
                Unit  => 'DAYS',  # values: DAYS, WEEKS, MONTHS, YEARS; OPTIONAL
                Value => 1,       # min: 1, max: 365

              },    # OPTIONAL
              Regions => [
                'MyNonEmptyString', ...    # min: 1, max: 1024
              ],    # OPTIONAL
              SharedAccounts => [ 'MyAccountId', ... ]
              ,     # min: 1, max: 1536; OPTIONAL
              TagMap => {
                'MyTagKey' =>
                  'MyTagValue',    # key: min: 1, max: 128, value: max: 256
              },    # min: 1, max: 50; OPTIONAL
            },    # OPTIONAL
            TagMap => {
              'MyTagKey' =>
                'MyTagValue',    # key: min: 1, max: 128, value: max: 256
            },    # min: 1, max: 50; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      ResourceSelection => {
        Recipes => [
          {
            Name            => 'MyResourceName',
            SemanticVersion => 'MyVersionNumber',

          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
        TagMap => {
          'MyTagKey' => 'MyTagValue',   # key: min: 1, max: 128, value: max: 256
        },    # min: 1, max: 50; OPTIONAL
      },
      ResourceType => 'AMI_IMAGE',
      Description  => 'MyNonEmptyString',    # OPTIONAL
      Status       => 'DISABLED',            # OPTIONAL
    );

    # Results:
    my $LifecyclePolicyArn = $UpdateLifecyclePolicyResponse->LifecyclePolicyArn;

    # Returns a L<Paws::ImageBuilder::UpdateLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/UpdateLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

Optional description for the lifecycle policy.



=head2 B<REQUIRED> ExecutionRole => Str

The name or Amazon Resource Name (ARN) of the IAM role that Image
Builder uses to update the lifecycle policy.



=head2 B<REQUIRED> LifecyclePolicyArn => Str

The Amazon Resource Name (ARN) of the lifecycle policy resource.



=head2 B<REQUIRED> PolicyDetails => ArrayRef[L<Paws::ImageBuilder::LifecyclePolicyDetail>]

The configuration details for a lifecycle policy resource.



=head2 B<REQUIRED> ResourceSelection => L<Paws::ImageBuilder::LifecyclePolicyResourceSelection>

Selection criteria for resources that the lifecycle policy applies to.



=head2 B<REQUIRED> ResourceType => Str

The type of image resource that the lifecycle policy applies to.

Valid values are: C<"AMI_IMAGE">, C<"CONTAINER_IMAGE">

=head2 Status => Str

Indicates whether the lifecycle policy resource is enabled.

Valid values are: C<"DISABLED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLifecyclePolicy in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

