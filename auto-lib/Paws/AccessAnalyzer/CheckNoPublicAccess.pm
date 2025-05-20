
package Paws::AccessAnalyzer::CheckNoPublicAccess;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckNoPublicAccess');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/check-no-public-access');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::CheckNoPublicAccessResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CheckNoPublicAccess - Arguments for method CheckNoPublicAccess on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckNoPublicAccess on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method CheckNoPublicAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckNoPublicAccess.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $CheckNoPublicAccessResponse = $access -analyzer->CheckNoPublicAccess(
      PolicyDocument => 'MyAccessCheckPolicyDocument',
      ResourceType   => 'AWS::DynamoDB::Table',

    );

    # Results:
    my $Message = $CheckNoPublicAccessResponse->Message;
    my $Reasons = $CheckNoPublicAccessResponse->Reasons;
    my $Result  = $CheckNoPublicAccessResponse->Result;

    # Returns a L<Paws::AccessAnalyzer::CheckNoPublicAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/CheckNoPublicAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyDocument => Str

The JSON policy document to evaluate for public access.



=head2 B<REQUIRED> ResourceType => Str

The type of resource to evaluate for public access. For example, to
check for public access to Amazon S3 buckets, you can choose
C<AWS::S3::Bucket> for the resource type.

For resource types not supported as valid values, IAM Access Analyzer
will return an error.

Valid values are: C<"AWS::DynamoDB::Table">, C<"AWS::DynamoDB::Stream">, C<"AWS::EFS::FileSystem">, C<"AWS::OpenSearchService::Domain">, C<"AWS::Kinesis::Stream">, C<"AWS::Kinesis::StreamConsumer">, C<"AWS::KMS::Key">, C<"AWS::Lambda::Function">, C<"AWS::S3::Bucket">, C<"AWS::S3::AccessPoint">, C<"AWS::S3Express::DirectoryBucket">, C<"AWS::S3::Glacier">, C<"AWS::S3Outposts::Bucket">, C<"AWS::S3Outposts::AccessPoint">, C<"AWS::SecretsManager::Secret">, C<"AWS::SNS::Topic">, C<"AWS::SQS::Queue">, C<"AWS::IAM::AssumeRolePolicyDocument">, C<"AWS::S3Tables::TableBucket">, C<"AWS::ApiGateway::RestApi">, C<"AWS::CodeArtifact::Domain">, C<"AWS::Backup::BackupVault">, C<"AWS::CloudTrail::Dashboard">, C<"AWS::CloudTrail::EventDataStore">, C<"AWS::S3Tables::Table">, C<"AWS::S3Express::AccessPoint">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckNoPublicAccess in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

