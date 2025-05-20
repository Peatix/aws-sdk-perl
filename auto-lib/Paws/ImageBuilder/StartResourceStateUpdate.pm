
package Paws::ImageBuilder::StartResourceStateUpdate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ExclusionRules => (is => 'ro', isa => 'Paws::ImageBuilder::ResourceStateUpdateExclusionRules', traits => ['NameInRequest'], request_name => 'exclusionRules');
  has ExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRole');
  has IncludeResources => (is => 'ro', isa => 'Paws::ImageBuilder::ResourceStateUpdateIncludeResources', traits => ['NameInRequest'], request_name => 'includeResources');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has State => (is => 'ro', isa => 'Paws::ImageBuilder::ResourceState', traits => ['NameInRequest'], request_name => 'state', required => 1);
  has UpdateAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateAt');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartResourceStateUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartResourceStateUpdate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::StartResourceStateUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::StartResourceStateUpdate - Arguments for method StartResourceStateUpdate on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartResourceStateUpdate on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method StartResourceStateUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartResourceStateUpdate.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $StartResourceStateUpdateResponse =
      $imagebuilder->StartResourceStateUpdate(
      ClientToken => 'MyClientToken',
      ResourceArn => 'MyImageBuildVersionArn',
      State       => {
        Status => 'AVAILABLE'
        ,    # values: AVAILABLE, DELETED, DEPRECATED, DISABLED; OPTIONAL
      },
      ExclusionRules => {
        Amis => {
          IsPublic     => 1,    # OPTIONAL
          LastLaunched => {
            Unit  => 'DAYS',    # values: DAYS, WEEKS, MONTHS, YEARS
            Value => 1,         # min: 1, max: 365

          },    # OPTIONAL
          Regions => [
            'MyNonEmptyString', ...    # min: 1, max: 1024
          ],    # OPTIONAL
          SharedAccounts => [ 'MyAccountId', ... ]
          ,     # min: 1, max: 1536; OPTIONAL
          TagMap => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # min: 1, max: 50; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ExecutionRole    => 'MyRoleNameOrArn',    # OPTIONAL
      IncludeResources => {
        Amis       => 1,                        # OPTIONAL
        Containers => 1,                        # OPTIONAL
        Snapshots  => 1,                        # OPTIONAL
      },    # OPTIONAL
      UpdateAt => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $LifecycleExecutionId =
      $StartResourceStateUpdateResponse->LifecycleExecutionId;
    my $ResourceArn = $StartResourceStateUpdateResponse->ResourceArn;

    # Returns a L<Paws::ImageBuilder::StartResourceStateUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/StartResourceStateUpdate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 ExclusionRules => L<Paws::ImageBuilder::ResourceStateUpdateExclusionRules>

Skip action on the image resource and associated resources if specified
exclusion rules are met.



=head2 ExecutionRole => Str

The name or Amazon Resource Name (ARN) of the IAM role thatE<rsquo>s
used to update image state.



=head2 IncludeResources => L<Paws::ImageBuilder::ResourceStateUpdateIncludeResources>

A list of image resources to update state for.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the Image Builder resource that is updated. The state update
might also impact associated resources.



=head2 B<REQUIRED> State => L<Paws::ImageBuilder::ResourceState>

Indicates the lifecycle action to take for this request.



=head2 UpdateAt => Str

The timestamp that indicates when resources are updated by a lifecycle
action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartResourceStateUpdate in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

