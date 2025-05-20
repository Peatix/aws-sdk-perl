
package Paws::SageMaker::DescribePartnerAppResponse;
  use Moose;
  has ApplicationConfig => (is => 'ro', isa => 'Paws::SageMaker::PartnerAppConfig');
  has Arn => (is => 'ro', isa => 'Str');
  has AuthType => (is => 'ro', isa => 'Str');
  has BaseUrl => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has EnableIamSessionBasedIdentity => (is => 'ro', isa => 'Bool');
  has Error => (is => 'ro', isa => 'Paws::SageMaker::ErrorInfo');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MaintenanceConfig => (is => 'ro', isa => 'Paws::SageMaker::PartnerAppMaintenanceConfig');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePartnerAppResponse

=head1 ATTRIBUTES


=head2 ApplicationConfig => L<Paws::SageMaker::PartnerAppConfig>

Configuration settings for the SageMaker Partner AI App.


=head2 Arn => Str

The ARN of the SageMaker Partner AI App that was described.


=head2 AuthType => Str

The authorization type that users use to access the SageMaker Partner
AI App.

Valid values are: C<"IAM">
=head2 BaseUrl => Str

The URL of the SageMaker Partner AI App that the Application SDK uses
to support in-app calls for the user.


=head2 CreationTime => Str

The time that the SageMaker Partner AI App was created.


=head2 EnableIamSessionBasedIdentity => Bool

When set to C<TRUE>, the SageMaker Partner AI App sets the Amazon Web
Services IAM session name or the authenticated IAM user as the identity
of the SageMaker Partner AI App user.


=head2 Error => L<Paws::SageMaker::ErrorInfo>

This is an error field object that contains the error code and the
reason for an operation failure.


=head2 ExecutionRoleArn => Str

The ARN of the IAM role associated with the SageMaker Partner AI App.


=head2 KmsKeyId => Str

The Amazon Web Services KMS customer managed key used to encrypt the
data at rest associated with SageMaker Partner AI Apps.


=head2 LastModifiedTime => Str

The time that the SageMaker Partner AI App was last modified.


=head2 MaintenanceConfig => L<Paws::SageMaker::PartnerAppMaintenanceConfig>

Maintenance configuration settings for the SageMaker Partner AI App.


=head2 Name => Str

The name of the SageMaker Partner AI App.


=head2 Status => Str

The status of the SageMaker Partner AI App.

Valid values are: C<"Creating">, C<"Updating">, C<"Deleting">, C<"Available">, C<"Failed">, C<"UpdateFailed">, C<"Deleted">
=head2 Tier => Str

The instance type and size of the cluster attached to the SageMaker
Partner AI App.


=head2 Type => Str

The type of SageMaker Partner AI App. Must be one of the following:
C<lakera-guard>, C<comet>, C<deepchecks-llm-evaluation>, or C<fiddler>.

Valid values are: C<"lakera-guard">, C<"comet">, C<"deepchecks-llm-evaluation">, C<"fiddler">
=head2 Version => Str

The version of the SageMaker Partner AI App.


=head2 _request_id => Str


=cut

1;