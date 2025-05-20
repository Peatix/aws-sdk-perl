
package Paws::AccessAnalyzer::GetFindingV2Response;
  use Moose;
  has AnalyzedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzedAt', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has FindingDetails => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::FindingDetails]', traits => ['NameInRequest'], request_name => 'findingDetails', required => 1);
  has FindingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingType');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resource');
  has ResourceOwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwnerAccount', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetFindingV2Response

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzedAt => Str

The time at which the resource-based policy or IAM entity that
generated the finding was analyzed.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the finding was created.


=head2 Error => Str

An error.


=head2 B<REQUIRED> FindingDetails => ArrayRef[L<Paws::AccessAnalyzer::FindingDetails>]

A localized message that explains the finding and provides guidance on
how to address it.


=head2 FindingType => Str

The type of the finding. For external access analyzers, the type is
C<ExternalAccess>. For unused access analyzers, the type can be
C<UnusedIAMRole>, C<UnusedIAMUserAccessKey>, C<UnusedIAMUserPassword>,
or C<UnusedPermission>.

Valid values are: C<"ExternalAccess">, C<"UnusedIAMRole">, C<"UnusedIAMUserAccessKey">, C<"UnusedIAMUserPassword">, C<"UnusedPermission">
=head2 B<REQUIRED> Id => Str

The ID of the finding to retrieve.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 Resource => Str

The resource that generated the finding.


=head2 B<REQUIRED> ResourceOwnerAccount => Str

Tye Amazon Web Services account ID that owns the resource.


=head2 B<REQUIRED> ResourceType => Str

The type of the resource identified in the finding.

Valid values are: C<"AWS::S3::Bucket">, C<"AWS::IAM::Role">, C<"AWS::SQS::Queue">, C<"AWS::Lambda::Function">, C<"AWS::Lambda::LayerVersion">, C<"AWS::KMS::Key">, C<"AWS::SecretsManager::Secret">, C<"AWS::EFS::FileSystem">, C<"AWS::EC2::Snapshot">, C<"AWS::ECR::Repository">, C<"AWS::RDS::DBSnapshot">, C<"AWS::RDS::DBClusterSnapshot">, C<"AWS::SNS::Topic">, C<"AWS::S3Express::DirectoryBucket">, C<"AWS::DynamoDB::Table">, C<"AWS::DynamoDB::Stream">, C<"AWS::IAM::User">
=head2 B<REQUIRED> Status => Str

The status of the finding.

Valid values are: C<"ACTIVE">, C<"ARCHIVED">, C<"RESOLVED">
=head2 B<REQUIRED> UpdatedAt => Str

The time at which the finding was updated.


=head2 _request_id => Str


=cut

