
package Paws::Bedrock::GetProvisionedModelThroughputResponse;
  use Moose;
  has CommitmentDuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitmentDuration');
  has CommitmentExpirationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitmentExpirationTime');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has DesiredModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredModelArn', required => 1);
  has DesiredModelUnits => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredModelUnits', required => 1);
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has FoundationModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'foundationModelArn', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime', required => 1);
  has ModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelArn', required => 1);
  has ModelUnits => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'modelUnits', required => 1);
  has ProvisionedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisionedModelArn', required => 1);
  has ProvisionedModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisionedModelName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetProvisionedModelThroughputResponse

=head1 ATTRIBUTES


=head2 CommitmentDuration => Str

Commitment duration of the Provisioned Throughput.

Valid values are: C<"OneMonth">, C<"SixMonths">
=head2 CommitmentExpirationTime => Str

The timestamp for when the commitment term for the Provisioned
Throughput expires.


=head2 B<REQUIRED> CreationTime => Str

The timestamp of the creation time for this Provisioned Throughput.


=head2 B<REQUIRED> DesiredModelArn => Str

The Amazon Resource Name (ARN) of the model requested to be associated
to this Provisioned Throughput. This value differs from the C<modelArn>
if updating hasn't completed.


=head2 B<REQUIRED> DesiredModelUnits => Int

The number of model units that was requested for this Provisioned
Throughput.


=head2 FailureMessage => Str

A failure message for any issues that occurred during creation,
updating, or deletion of the Provisioned Throughput.


=head2 B<REQUIRED> FoundationModelArn => Str

The Amazon Resource Name (ARN) of the base model for which the
Provisioned Throughput was created, or of the base model that the
custom model for which the Provisioned Throughput was created was
customized.


=head2 B<REQUIRED> LastModifiedTime => Str

The timestamp of the last time that this Provisioned Throughput was
modified.


=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Name (ARN) of the model associated with this
Provisioned Throughput.


=head2 B<REQUIRED> ModelUnits => Int

The number of model units allocated to this Provisioned Throughput.


=head2 B<REQUIRED> ProvisionedModelArn => Str

The Amazon Resource Name (ARN) of the Provisioned Throughput.


=head2 B<REQUIRED> ProvisionedModelName => Str

The name of the Provisioned Throughput.


=head2 B<REQUIRED> Status => Str

The status of the Provisioned Throughput.

Valid values are: C<"Creating">, C<"InService">, C<"Updating">, C<"Failed">
=head2 _request_id => Str


=cut

