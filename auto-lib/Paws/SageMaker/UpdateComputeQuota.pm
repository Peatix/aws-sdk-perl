
package Paws::SageMaker::UpdateComputeQuota;
  use Moose;
  has ActivationState => (is => 'ro', isa => 'Str');
  has ComputeQuotaConfig => (is => 'ro', isa => 'Paws::SageMaker::ComputeQuotaConfig');
  has ComputeQuotaId => (is => 'ro', isa => 'Str', required => 1);
  has ComputeQuotaTarget => (is => 'ro', isa => 'Paws::SageMaker::ComputeQuotaTarget');
  has Description => (is => 'ro', isa => 'Str');
  has TargetVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComputeQuota');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateComputeQuotaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateComputeQuota - Arguments for method UpdateComputeQuota on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComputeQuota on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateComputeQuota.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComputeQuota.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateComputeQuotaResponse = $api . sagemaker->UpdateComputeQuota(
      ComputeQuotaId     => 'MyComputeQuotaId',
      TargetVersion      => 1,
      ActivationState    => 'Enabled',            # OPTIONAL
      ComputeQuotaConfig => {
        ComputeQuotaResources => [
          {
            Count        => 1,                  # min: 1
            InstanceType => 'ml.p4d.24xlarge'
            , # values: ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.c5n.large, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.16xlarge, ml.g6.12xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.gr6.4xlarge, ml.gr6.8xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.16xlarge, ml.g6e.12xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.p5e.48xlarge, ml.p5en.48xlarge, ml.trn2.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.i3en.large, ml.i3en.xlarge, ml.i3en.2xlarge, ml.i3en.3xlarge, ml.i3en.6xlarge, ml.i3en.12xlarge, ml.i3en.24xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge

          },
          ...
        ],    # max: 15; OPTIONAL
        PreemptTeamTasks => 'Never',    # values: Never, LowerPriority; OPTIONAL
        ResourceSharingConfig => {
          Strategy    => 'Lend',        # values: Lend, DontLend, LendAndBorrow
          BorrowLimit => 1,             # min: 1, max: 500; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ComputeQuotaTarget => {
        TeamName        => 'MyComputeQuotaTargetTeamName',
        FairShareWeight => 1,                               # max: 100; OPTIONAL
      },    # OPTIONAL
      Description => 'MyEntityDescription',    # OPTIONAL
    );

    # Results:
    my $ComputeQuotaArn     = $UpdateComputeQuotaResponse->ComputeQuotaArn;
    my $ComputeQuotaVersion = $UpdateComputeQuotaResponse->ComputeQuotaVersion;

    # Returns a L<Paws::SageMaker::UpdateComputeQuotaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateComputeQuota>

=head1 ATTRIBUTES


=head2 ActivationState => Str

The state of the compute allocation being described. Use to enable or
disable compute allocation.

Default is C<Enabled>.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 ComputeQuotaConfig => L<Paws::SageMaker::ComputeQuotaConfig>

Configuration of the compute allocation definition. This includes the
resource sharing option, and the setting to preempt low priority tasks.



=head2 B<REQUIRED> ComputeQuotaId => Str

ID of the compute allocation definition.



=head2 ComputeQuotaTarget => L<Paws::SageMaker::ComputeQuotaTarget>

The target entity to allocate compute resources to.



=head2 Description => Str

Description of the compute allocation definition.



=head2 B<REQUIRED> TargetVersion => Int

Target version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComputeQuota in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

