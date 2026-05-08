package Paws::S3;
  warn "Paws::S3 is not stable / supported / entirely developed" unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
  use Moose;
  sub service { 's3' }
  sub signing_name { 's3' }
  sub version { '2006-03-01' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'BadDigest' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'RequestTimeout' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::S3Signature', 'Paws::Net::RestXmlCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'oneOf',
          [
            'us-east-1',
            undef
          ]
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => '{scheme}://s3.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      properties => {
        signatureVersion => 's3v4'
      },
      uri => '{scheme}://{service}.{region}.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'oneOf',
          [
            'us-east-1',
            'ap-northeast-1',
            'sa-east-1',
            'ap-southeast-1',
            'ap-southeast-2',
            'us-west-2',
            'us-west-1',
            'eu-west-1',
            'us-gov-west-1',
            'fips-us-gov-west-1'
          ]
        ]
      ],
      uri => '{scheme}://{service}-{region}.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'notEquals',
          undef
        ]
      ],
      properties => {
        signatureVersion => 's3v4'
      },
      uri => '{scheme}://{service}.{region}.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AbortMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::AbortMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CompleteMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CopyObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBucketMetadataTableConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateBucketMetadataTableConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketIntelligentTieringConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketIntelligentTieringConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketMetadataTableConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketMetadataTableConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketOwnershipControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketOwnershipControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeletePublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAccelerateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAccelerateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketIntelligentTieringConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketIntelligentTieringConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketMetadataTableConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketMetadataTableConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketOwnershipControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketOwnershipControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketPolicyStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketPolicyStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketRequestPayment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketRequestPayment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketVersioning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketVersioning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectLockConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectLockConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectRetention {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectRetention', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectTorrent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectTorrent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub HeadBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::HeadBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub HeadObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::HeadObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketAnalyticsConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketAnalyticsConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketIntelligentTieringConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketIntelligentTieringConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketInventoryConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketInventoryConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketMetricsConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketMetricsConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDirectoryBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListDirectoryBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMultipartUploads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListMultipartUploads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectsV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjectsV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjectVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAccelerateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAccelerateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketIntelligentTieringConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketIntelligentTieringConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketOwnershipControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketOwnershipControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketRequestPayment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketRequestPayment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketVersioning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketVersioning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectLegalHold {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectLegalHold', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectLockConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectLockConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectRetention {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectRetention', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPublicAccessBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutPublicAccessBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::RestoreObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SelectObjectContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::SelectObjectContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::UploadPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadPartCopy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::UploadPartCopy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub WriteGetObjectResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::WriteGetObjectResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBuckets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuckets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->ContinuationToken) {
        $next_result = $self->ListBuckets(@_, ContinuationToken => $next_result->ContinuationToken);
        push @{ $result->Buckets }, @{ $next_result->Buckets };
      }
      return $result;
    } else {
      while ($result->ContinuationToken) {
        $callback->($_ => 'Buckets') foreach (@{ $result->Buckets });
        $result = $self->ListBuckets(@_, ContinuationToken => $result->ContinuationToken);
      }
      $callback->($_ => 'Buckets') foreach (@{ $result->Buckets });
    }

    return undef
  }
  sub ListAllDirectoryBuckets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDirectoryBuckets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->ContinuationToken) {
        $next_result = $self->ListDirectoryBuckets(@_, ContinuationToken => $next_result->ContinuationToken);
        push @{ $result->Buckets }, @{ $next_result->Buckets };
      }
      return $result;
    } else {
      while ($result->ContinuationToken) {
        $callback->($_ => 'Buckets') foreach (@{ $result->Buckets });
        $result = $self->ListDirectoryBuckets(@_, ContinuationToken => $result->ContinuationToken);
      }
      $callback->($_ => 'Buckets') foreach (@{ $result->Buckets });
    }

    return undef
  }
  sub ListAllMultipartUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMultipartUploads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListMultipartUploads(@_, KeyMarker => $next_result->NextKeyMarker, UploadIdMarker => $next_result->NextUploadIdMarker);
        push @{ $result->Uploads }, @{ $next_result->Uploads };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Uploads') foreach (@{ $result->Uploads });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListMultipartUploads(@_, KeyMarker => $result->NextKeyMarker, UploadIdMarker => $result->NextUploadIdMarker);
      }
      $callback->($_ => 'Uploads') foreach (@{ $result->Uploads });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjects(@_, Marker => $result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef ));
        push @{ $result->Contents }, @{ $next_result->Contents };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Contents') foreach (@{ $result->Contents });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjects(@_, Marker => $result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef ));
      }
      $callback->($_ => 'Contents') foreach (@{ $result->Contents });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjectsV2 {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectsV2(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjectsV2(@_, ContinuationToken => $next_result->NextContinuationToken);
        push @{ $result->Contents }, @{ $next_result->Contents };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Contents') foreach (@{ $result->Contents });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjectsV2(@_, ContinuationToken => $result->NextContinuationToken);
      }
      $callback->($_ => 'Contents') foreach (@{ $result->Contents });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjectVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjectVersions(@_, KeyMarker => $next_result->NextKeyMarker, VersionIdMarker => $next_result->NextVersionIdMarker);
        push @{ $result->Versions }, @{ $next_result->Versions };
        push @{ $result->DeleteMarkers }, @{ $next_result->DeleteMarkers };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Versions') foreach (@{ $result->Versions });
        $callback->($_ => 'DeleteMarkers') foreach (@{ $result->DeleteMarkers });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjectVersions(@_, KeyMarker => $result->NextKeyMarker, VersionIdMarker => $result->NextVersionIdMarker);
      }
      $callback->($_ => 'Versions') foreach (@{ $result->Versions });
      $callback->($_ => 'DeleteMarkers') foreach (@{ $result->DeleteMarkers });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllParts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListParts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListParts(@_, PartNumberMarker => $next_result->NextPartNumberMarker);
        push @{ $result->Parts }, @{ $next_result->Parts };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Parts') foreach (@{ $result->Parts });
        $result = $self->ListParts(@_, PartNumberMarker => $result->NextPartNumberMarker);
      }
      $callback->($_ => 'Parts') foreach (@{ $result->Parts });
    }

    return undef
  }


  sub operations { qw/AbortMultipartUpload CompleteMultipartUpload CopyObject CreateBucket CreateBucketMetadataTableConfiguration CreateMultipartUpload CreateSession DeleteBucket DeleteBucketAnalyticsConfiguration DeleteBucketCors DeleteBucketEncryption DeleteBucketIntelligentTieringConfiguration DeleteBucketInventoryConfiguration DeleteBucketLifecycle DeleteBucketMetadataTableConfiguration DeleteBucketMetricsConfiguration DeleteBucketOwnershipControls DeleteBucketPolicy DeleteBucketReplication DeleteBucketTagging DeleteBucketWebsite DeleteObject DeleteObjects DeleteObjectTagging DeletePublicAccessBlock GetBucketAccelerateConfiguration GetBucketAcl GetBucketAnalyticsConfiguration GetBucketCors GetBucketEncryption GetBucketIntelligentTieringConfiguration GetBucketInventoryConfiguration GetBucketLifecycle GetBucketLifecycleConfiguration GetBucketLocation GetBucketLogging GetBucketMetadataTableConfiguration GetBucketMetricsConfiguration GetBucketNotification GetBucketNotificationConfiguration GetBucketOwnershipControls GetBucketPolicy GetBucketPolicyStatus GetBucketReplication GetBucketRequestPayment GetBucketTagging GetBucketVersioning GetBucketWebsite GetObject GetObjectAcl GetObjectAttributes GetObjectLegalHold GetObjectLockConfiguration GetObjectRetention GetObjectTagging GetObjectTorrent GetPublicAccessBlock HeadBucket HeadObject ListBucketAnalyticsConfigurations ListBucketIntelligentTieringConfigurations ListBucketInventoryConfigurations ListBucketMetricsConfigurations ListBuckets ListDirectoryBuckets ListMultipartUploads ListObjects ListObjectsV2 ListObjectVersions ListParts PutBucketAccelerateConfiguration PutBucketAcl PutBucketAnalyticsConfiguration PutBucketCors PutBucketEncryption PutBucketIntelligentTieringConfiguration PutBucketInventoryConfiguration PutBucketLifecycle PutBucketLifecycleConfiguration PutBucketLogging PutBucketMetricsConfiguration PutBucketNotification PutBucketNotificationConfiguration PutBucketOwnershipControls PutBucketPolicy PutBucketReplication PutBucketRequestPayment PutBucketTagging PutBucketVersioning PutBucketWebsite PutObject PutObjectAcl PutObjectLegalHold PutObjectLockConfiguration PutObjectRetention PutObjectTagging PutPublicAccessBlock RestoreObject SelectObjectContent UploadPart UploadPartCopy WriteGetObjectResponse / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3 - Perl Interface to AWS Amazon Simple Storage Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('S3');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01>


=head1 METHODS

=head2 AbortMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [ExpectedBucketOwner => Str]

=item [IfMatchInitiatedTime => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::AbortMultipartUpload>

Returns: a L<Paws::S3::AbortMultipartUploadOutput> instance

This operation aborts a multipart upload. After a multipart upload is
aborted, no additional parts can be uploaded using that upload ID. The
storage consumed by any previously uploaded parts will be freed.
However, if any part uploads are currently in progress, those part
uploads might or might not succeed. As a result, it might be necessary
to abort a given multipart upload multiple times in order to completely
free all storage consumed by all parts.

To verify that all parts have been removed and prevent getting charged
for the part storage, you should call the ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
API operation and ensure that the parts list is empty.

=over

=item *

B<Directory buckets> - If multipart uploads in a directory bucket are
in progress, you can't delete the bucket until all the in-progress
multipart uploads are aborted or completed. To delete these in-progress
multipart uploads, use the C<ListMultipartUploads> operation to list
the in-progress multipart uploads in the bucket and use the
C<AbortMultipartUpload> operation to abort all the in-progress
multipart uploads.

=item *

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - For information about
permissions required to use the multipart upload, see Multipart Upload
and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<AbortMultipartUpload>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

ListMultipartUploads
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)

=back



=head2 CompleteMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [ChecksumCRC32 => Str]

=item [ChecksumCRC32C => Str]

=item [ChecksumCRC64NVME => Str]

=item [ChecksumSHA1 => Str]

=item [ChecksumSHA256 => Str]

=item [ChecksumType => Str]

=item [ExpectedBucketOwner => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [MpuObjectSize => Int]

=item [MultipartUpload => L<Paws::S3::CompletedMultipartUpload>]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::CompleteMultipartUpload>

Returns: a L<Paws::S3::CompleteMultipartUploadOutput> instance

Completes a multipart upload by assembling previously uploaded parts.

You first initiate the multipart upload and then upload all parts using
the UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
operation or the UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)
operation. After successfully uploading all relevant parts of an
upload, you call this C<CompleteMultipartUpload> operation to complete
the upload. Upon receiving this request, Amazon S3 concatenates all the
parts in ascending order by part number to create a new object. In the
CompleteMultipartUpload request, you must provide the parts list and
ensure that the parts list is complete. The CompleteMultipartUpload API
operation concatenates the parts that you provide in the list. For each
part in the list, you must provide the C<PartNumber> value and the
C<ETag> value that are returned after that part was uploaded.

The processing of a CompleteMultipartUpload request could take several
minutes to finalize. After Amazon S3 begins processing the request, it
sends an HTTP response header that specifies a C<200 OK> response.
While processing is in progress, Amazon S3 periodically sends white
space characters to keep the connection from timing out. A request
could fail after the initial C<200 OK> response has been sent. This
means that a C<200 OK> response can contain either a success or an
error. The error response might be embedded in the C<200 OK> response.
If you call this API operation directly, make sure to design your
application to parse the contents of the response and handle it
appropriately. If you use Amazon Web Services SDKs, SDKs handle this
condition. The SDKs detect the embedded error and apply error handling
per your configuration settings (including automatically retrying the
request as appropriate). If the condition persists, the SDKs throw an
exception (or, for the SDKs that don't use exceptions, they return an
error).

Note that if C<CompleteMultipartUpload> fails, applications should be
prepared to retry any failed requests (including 500 error responses).
For more information, see Amazon S3 Error Best Practices
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html).

You can't use C<Content-Type: application/x-www-form-urlencoded> for
the CompleteMultipartUpload requests. Also, if you don't provide a
C<Content-Type> header, C<CompleteMultipartUpload> can still return a
C<200 OK> response.

For more information about multipart uploads, see Uploading Objects
Using Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - For information about
permissions required to use the multipart upload API, see Multipart
Upload and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
in the I<Amazon S3 User Guide>.

If you provide an additional checksum value
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_Checksum.html) in
your C<MultipartUpload> requests and the object is encrypted with Key
Management Service, you must have permission to use the C<kms:Decrypt>
action for the C<CompleteMultipartUpload> request to succeed.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

If the object is encrypted with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

=back

=item Special errors

=over

=item *

Error Code: C<EntityTooSmall>

=over

=item *

Description: Your proposed upload is smaller than the minimum allowed
object size. Each part must be at least 5 MB in size, except the last
part.

=item *

HTTP Status Code: 400 Bad Request

=back

=item *

Error Code: C<InvalidPart>

=over

=item *

Description: One or more of the specified parts could not be found. The
part might not have been uploaded, or the specified ETag might not have
matched the uploaded part's ETag.

=item *

HTTP Status Code: 400 Bad Request

=back

=item *

Error Code: C<InvalidPartOrder>

=over

=item *

Description: The list of parts was not in ascending order. The parts
list must be specified in order by part number.

=item *

HTTP Status Code: 400 Bad Request

=back

=item *

Error Code: C<NoSuchUpload>

=over

=item *

Description: The specified multipart upload does not exist. The upload
ID might be invalid, or the multipart upload might have been aborted or
completed.

=item *

HTTP Status Code: 404 Not Found

=back

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<CompleteMultipartUpload>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

ListMultipartUploads
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)

=back



=head2 CopyObject

=over

=item Bucket => Str

=item CopySource => Str

=item Key => Str

=item [ACL => Str]

=item [BucketKeyEnabled => Bool]

=item [CacheControl => Str]

=item [ChecksumAlgorithm => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentType => Str]

=item [CopySourceIfMatch => Str]

=item [CopySourceIfModifiedSince => Str]

=item [CopySourceIfNoneMatch => Str]

=item [CopySourceIfUnmodifiedSince => Str]

=item [CopySourceSSECustomerAlgorithm => Str]

=item [CopySourceSSECustomerKey => Str]

=item [CopySourceSSECustomerKeyMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [ExpectedSourceBucketOwner => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [MetadataDirective => Str]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [TaggingDirective => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::CopyObject>

Returns: a L<Paws::S3::CopyObjectOutput> instance

Creates a copy of an object that is already stored in Amazon S3.

You can store individual objects of up to 5 TB in Amazon S3. You create
a copy of your object up to 5 GB in size in a single atomic action
using this API. However, to copy an object greater than 5 GB, you must
use the multipart upload Upload Part - Copy (UploadPartCopy) API. For
more information, see Copy Object Using the REST Multipart Upload API
(https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).

You can copy individual objects between general purpose buckets,
between directory buckets, and between general purpose buckets and
directory buckets.

=over

=item *

Amazon S3 supports copy operations using Multi-Region Access Points
only as a destination when using the Multi-Region Access Point ARN.

=item *

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=item *

VPC endpoints don't support cross-Region requests (including copies).
If you're using VPC endpoints, your source and destination buckets
should be in the same Amazon Web Services Region as your VPC endpoint.

=back

Both the Region that you want to copy the object from and the Region
that you want to copy the object to must be enabled for your account.
For more information about how to enable a Region for your account, see
Enable or disable a Region for standalone accounts
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html#manage-acct-regions-enable-standalone)
in the I<Amazon Web Services Account Management Guide>.

Amazon S3 transfer acceleration does not support cross-Region copies.
If you request a cross-Region copy using a transfer acceleration
endpoint, you get a C<400 Bad Request> error. For more information, see
Transfer Acceleration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).

=over

=item Authentication and authorization

All C<CopyObject> requests must be authenticated and signed by using
IAM credentials (access key ID and secret access key for the IAM
identities). All headers with the C<x-amz-> prefix, including
C<x-amz-copy-source>, must be signed. For more information, see REST
Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).

B<Directory buckets> - You must use the IAM credentials to authenticate
and authorize your access to the C<CopyObject> API operation, instead
of using the temporary security credentials through the
C<CreateSession> API operation.

Amazon Web Services CLI or SDKs handles authentication and
authorization on your behalf.

=item Permissions

You must have I<read> access to the source object and I<write> access
to the destination bucket.

=over

=item *

B<General purpose bucket permissions> - You must have permissions in an
IAM policy based on the source and destination bucket types in a
C<CopyObject> operation.

=over

=item *

If the source object is in a general purpose bucket, you must have B<
C<s3:GetObject> > permission to read the source object that is being
copied.

=item *

If the destination bucket is a general purpose bucket, you must have B<
C<s3:PutObject> > permission to write the object copy to the
destination bucket.

=back

=item *

B<Directory bucket permissions> - You must have permissions in a bucket
policy or an IAM identity-based policy based on the source and
destination bucket types in a C<CopyObject> operation.

=over

=item *

If the source object that you want to copy is in a directory bucket,
you must have the B< C<s3express:CreateSession> > permission in the
C<Action> element of a policy to read the object. By default, the
session is in the C<ReadWrite> mode. If you want to restrict the
access, you can explicitly set the C<s3express:SessionMode> condition
key to C<ReadOnly> on the copy source bucket.

=item *

If the copy destination is a directory bucket, you must have the B<
C<s3express:CreateSession> > permission in the C<Action> element of a
policy to write the object to the destination. The
C<s3express:SessionMode> condition key can't be set to C<ReadOnly> on
the copy destination bucket.

=back

If the object is encrypted with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

For example policies, see Example bucket policies for S3 Express One
Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html)
and Amazon Web Services Identity and Access Management (IAM)
identity-based policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html)
in the I<Amazon S3 User Guide>.

=back

=item Response and special errors

When the request is an HTTP 1.1 request, the response is chunk encoded.
When the request is not an HTTP 1.1 request, the response would not
contain the C<Content-Length>. You always need to read the entire
response body to check if the copy succeeds.

=over

=item *

If the copy is successful, you receive a response with information
about the copied object.

=item *

A copy request might return an error when Amazon S3 receives the copy
request or while Amazon S3 is copying the files. A C<200 OK> response
can contain either a success or an error.

=over

=item *

If the error occurs before the copy action starts, you receive a
standard Amazon S3 error.

=item *

If the error occurs during the copy operation, the error response is
embedded in the C<200 OK> response. For example, in a cross-region
copy, you may encounter throttling and receive a C<200 OK> response.
For more information, see Resolve the Error 200 response when copying
objects to Amazon S3
(https://repost.aws/knowledge-center/s3-resolve-200-internalerror). The
C<200 OK> status code means the copy was accepted, but it doesn't mean
the copy is complete. Another example is when you disconnect from
Amazon S3 before the copy is complete, Amazon S3 might cancel the copy
and you may receive a C<200 OK> response. You must stay connected to
Amazon S3 until the entire response is successfully received and
processed.

If you call this API operation directly, make sure to design your
application to parse the content of the response and handle it
appropriately. If you use Amazon Web Services SDKs, SDKs handle this
condition. The SDKs detect the embedded error and apply error handling
per your configuration settings (including automatically retrying the
request as appropriate). If the condition persists, the SDKs throw an
exception (or, for the SDKs that don't use exceptions, they return an
error).

=back

=back

=item Charge

The copy request charge is based on the storage class and Region that
you specify for the destination object. The request can also result in
a data retrieval charge for the source if the source storage class
bills for data retrieval. If the copy source is in a different region,
the data transfer is billed to the copy source account. For pricing
information, see Amazon S3 pricing (http://aws.amazon.com/s3/pricing/).

=item HTTP Host header syntax

=over

=item *

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=item *

B<Amazon S3 on Outposts> - When you use this action with S3 on Outposts
through the REST API, you must direct requests to the S3 on Outposts
hostname. The S3 on Outposts hostname takes the form C<
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com>.
The hostname isn't required when you use the Amazon Web Services CLI or
SDKs.

=back

=back

The following operations are related to C<CopyObject>:

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=back



=head2 CreateBucket

=over

=item Bucket => Str

=item [ACL => Str]

=item [CreateBucketConfiguration => L<Paws::S3::CreateBucketConfiguration>]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]

=item [ObjectLockEnabledForBucket => Bool]

=item [ObjectOwnership => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateBucket>

Returns: a L<Paws::S3::CreateBucketOutput> instance

This action creates an Amazon S3 bucket. To create an Amazon S3 on
Outposts bucket, see C<CreateBucket>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html).

Creates a new S3 bucket. To create a bucket, you must set up Amazon S3
and have a valid Amazon Web Services Access Key ID to authenticate
requests. Anonymous requests are never allowed to create buckets. By
creating the bucket, you become the bucket owner.

There are two types of buckets: general purpose buckets and directory
buckets. For more information about these bucket types, see Creating,
configuring, and working with Amazon S3 buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html)
in the I<Amazon S3 User Guide>.

=over

=item *

B<General purpose buckets> - If you send your C<CreateBucket> request
to the C<s3.amazonaws.com> global endpoint, the request goes to the
C<us-east-1> Region. So the signature calculations in Signature Version
4 must use C<us-east-1> as the Region, even if the location constraint
in the request specifies another Region where the bucket is to be
created. If you create a bucket in a Region other than US East (N.
Virginia), your application must be able to handle 307 redirect. For
more information, see Virtual hosting of buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - In addition to the
C<s3:CreateBucket> permission, the following permissions are required
in a policy when your C<CreateBucket> request includes specific
headers:

=over

=item *

B<Access control lists (ACLs)> - In your C<CreateBucket> request, if
you specify an access control list (ACL) and set it to C<public-read>,
C<public-read-write>, C<authenticated-read>, or if you explicitly
specify any other custom ACLs, both C<s3:CreateBucket> and
C<s3:PutBucketAcl> permissions are required. In your C<CreateBucket>
request, if you set the ACL to C<private>, or if you don't specify any
ACLs, only the C<s3:CreateBucket> permission is required.

=item *

B<Object Lock> - In your C<CreateBucket> request, if you set
C<x-amz-bucket-object-lock-enabled> to true, the
C<s3:PutBucketObjectLockConfiguration> and C<s3:PutBucketVersioning>
permissions are required.

=item *

B<S3 Object Ownership> - If your C<CreateBucket> request includes the
C<x-amz-object-ownership> header, then the
C<s3:PutBucketOwnershipControls> permission is required.

To set an ACL on a bucket as part of a C<CreateBucket> request, you
must explicitly set S3 Object Ownership for the bucket to a different
value than the default, C<BucketOwnerEnforced>. Additionally, if your
desired bucket ACL grants public access, you must first create the
bucket (without the bucket ACL) and then explicitly disable Block
Public Access on the bucket before using C<PutBucketAcl> to set the
ACL. If you try to create a bucket with a public ACL, the request will
fail.

For the majority of modern use cases in S3, we recommend that you keep
all Block Public Access settings enabled and keep ACLs disabled. If you
would like to share data with users outside of your account, you can
use bucket policies as needed. For more information, see Controlling
ownership of objects and disabling ACLs for your bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
and Blocking public access to your Amazon S3 storage
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)
in the I<Amazon S3 User Guide>.

=item *

B<S3 Block Public Access> - If your specific use case requires granting
public access to your S3 resources, you can disable Block Public
Access. Specifically, you can create a new bucket with Block Public
Access enabled, then separately call the C<DeletePublicAccessBlock>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)
API. To use this operation, you must have the
C<s3:PutBucketPublicAccessBlock> permission. For more information about
S3 Block Public Access, see Blocking public access to your Amazon S3
storage
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)
in the I<Amazon S3 User Guide>.

=back

=item *

B<Directory bucket permissions> - You must have the
C<s3express:CreateBucket> permission in an IAM identity-based policy
instead of a bucket policy. Cross-account access to this API operation
isn't supported. This operation can only be performed by the Amazon Web
Services account that owns the resource. For more information about
directory bucket policies and permissions, see Amazon Web Services
Identity and Access Management (IAM) for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

The permissions for ACLs, Object Lock, S3 Object Ownership, and S3
Block Public Access are not supported for directory buckets. For
directory buckets, all Block Public Access settings are enabled at the
bucket level and S3 Object Ownership is set to Bucket owner enforced
(ACLs disabled). These settings can't be modified.

For more information about permissions for creating and working with
directory buckets, see Directory buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html)
in the I<Amazon S3 User Guide>. For more information about supported S3
features for directory buckets, see Features of S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-one-zone.html#s3-express-features)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<CreateBucket>:

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

=back



=head2 CreateBucketMetadataTableConfiguration

=over

=item Bucket => Str

=item MetadataTableConfiguration => L<Paws::S3::MetadataTableConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateBucketMetadataTableConfiguration>

Returns: nothing

Creates a metadata table configuration for a general purpose bucket.
For more information, see Accelerating data discovery with S3 Metadata
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-overview.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

To use this operation, you must have the following permissions. For
more information, see Setting up permissions for configuring metadata
tables
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-permissions.html)
in the I<Amazon S3 User Guide>.

If you also want to integrate your table bucket with Amazon Web
Services analytics services so that you can query your metadata table,
you need additional permissions. For more information, see Integrating
Amazon S3 Tables with Amazon Web Services analytics services
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-integrating-aws.html)
in the I<Amazon S3 User Guide>.

=over

=item *

C<s3:CreateBucketMetadataTableConfiguration>

=item *

C<s3tables:CreateNamespace>

=item *

C<s3tables:GetTable>

=item *

C<s3tables:CreateTable>

=item *

C<s3tables:PutTablePolicy>

=back

=back

The following operations are related to
C<CreateBucketMetadataTableConfiguration>:

=over

=item *

DeleteBucketMetadataTableConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetadataTableConfiguration.html)

=item *

GetBucketMetadataTableConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetadataTableConfiguration.html)

=back



=head2 CreateMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item [ACL => Str]

=item [BucketKeyEnabled => Bool]

=item [CacheControl => Str]

=item [ChecksumAlgorithm => Str]

=item [ChecksumType => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentType => Str]

=item [ExpectedBucketOwner => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateMultipartUpload>

Returns: a L<Paws::S3::CreateMultipartUploadOutput> instance

This action initiates a multipart upload and returns an upload ID. This
upload ID is used to associate all of the parts in the specific
multipart upload. You specify this upload ID in each of your subsequent
upload part requests (see UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)).
You also include this upload ID in the final request to either complete
or abort the multipart upload request. For more information about
multipart uploads, see Multipart Upload Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
the I<Amazon S3 User Guide>.

After you initiate a multipart upload and upload one or more parts, to
stop being charged for storing the uploaded parts, you must either
complete or abort the multipart upload. Amazon S3 frees up the space
used to store the parts and stops charging you for storing them only
after you either complete or abort a multipart upload.

If you have configured a lifecycle rule to abort incomplete multipart
uploads, the created multipart upload must be completed within the
number of days specified in the bucket lifecycle configuration.
Otherwise, the incomplete multipart upload becomes eligible for an
abort action and Amazon S3 aborts the multipart upload. For more
information, see Aborting Incomplete Multipart Uploads Using a Bucket
Lifecycle Configuration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

=over

=item *

B<Directory buckets > - S3 Lifecycle is not supported by directory
buckets.

=item *

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=over

=item Request signing

For request signing, multipart upload is just a series of regular
requests. You initiate a multipart upload, send one or more requests to
upload parts, and then complete the multipart upload process. You sign
each request individually. There is nothing special about signing
multipart upload requests. For more information about signing, see
Authenticating Requests (Amazon Web Services Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the I<Amazon S3 User Guide>.

=item Permissions

=over

=item *

B<General purpose bucket permissions> - To perform a multipart upload
with encryption using an Key Management Service (KMS) KMS key, the
requester must have permission to the C<kms:Decrypt> and
C<kms:GenerateDataKey> actions on the key. The requester must also have
permissions for the C<kms:GenerateDataKey> action for the
C<CreateMultipartUpload> API. Then, the requester needs permissions for
the C<kms:Decrypt> action on the C<UploadPart> and C<UploadPartCopy>
APIs. These permissions are required because Amazon S3 must decrypt and
read data from the encrypted file parts before it completes the
multipart upload. For more information, see Multipart upload API and
permissions
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions)
and Protecting data using server-side encryption with Amazon Web
Services KMS
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item Encryption

=over

=item *

B<General purpose buckets> - Server-side encryption is for data
encryption at rest. Amazon S3 encrypts your data as it writes it to
disks in its data centers and decrypts it when you access it. Amazon S3
automatically encrypts all new objects that are uploaded to an S3
bucket. When doing a multipart upload, if you don't specify encryption
information in your request, the encryption setting of the uploaded
parts is set to the default encryption configuration of the destination
bucket. By default, all buckets have a base level of encryption
configuration that uses server-side encryption with Amazon S3 managed
keys (SSE-S3). If the destination bucket has a default encryption
configuration that uses server-side encryption with an Key Management
Service (KMS) key (SSE-KMS), or a customer-provided encryption key
(SSE-C), Amazon S3 uses the corresponding KMS key, or a
customer-provided key to encrypt the uploaded parts. When you perform a
CreateMultipartUpload operation, if you want to use a different type of
encryption setting for the uploaded parts, you can request that Amazon
S3 encrypts the object with a different encryption key (such as an
Amazon S3 managed key, a KMS key, or a customer-provided key). When the
encryption setting in your request is different from the default
encryption configuration of the destination bucket, the encryption
setting in your request takes precedence. If you choose to provide your
own encryption key, the request headers you provide in UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)
requests must match the headers you used in the
C<CreateMultipartUpload> request.

=over

=item *

Use KMS keys (SSE-KMS) that include the Amazon Web Services managed key
(C<aws/s3>) and KMS customer managed keys stored in Key Management
Service (KMS) E<ndash> If you want Amazon Web Services to manage the
keys used to encrypt data, specify the following headers in the
request.

=over

=item *

C<x-amz-server-side-encryption>

=item *

C<x-amz-server-side-encryption-aws-kms-key-id>

=item *

C<x-amz-server-side-encryption-context>

=back

=over

=item *

If you specify C<x-amz-server-side-encryption:aws:kms>, but don't
provide C<x-amz-server-side-encryption-aws-kms-key-id>, Amazon S3 uses
the Amazon Web Services managed key (C<aws/s3> key) in KMS to protect
the data.

=item *

To perform a multipart upload with encryption by using an Amazon Web
Services KMS key, the requester must have permission to the
C<kms:Decrypt> and C<kms:GenerateDataKey*> actions on the key. These
permissions are required because Amazon S3 must decrypt and read data
from the encrypted file parts before it completes the multipart upload.
For more information, see Multipart upload API and permissions
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions)
and Protecting data using server-side encryption with Amazon Web
Services KMS
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
in the I<Amazon S3 User Guide>.

=item *

If your Identity and Access Management (IAM) user or role is in the
same Amazon Web Services account as the KMS key, then you must have
these permissions on the key policy. If your IAM user or role is in a
different account from the key, then you must have the permissions on
both the key policy and your IAM user or role.

=item *

All C<GET> and C<PUT> requests for an object protected by KMS fail if
you don't make them by using Secure Sockets Layer (SSL), Transport
Layer Security (TLS), or Signature Version 4. For information about
configuring any of the officially supported Amazon Web Services SDKs
and Amazon Web Services CLI, see Specifying the Signature Version in
Request Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version)
in the I<Amazon S3 User Guide>.

=back

For more information about server-side encryption with KMS keys
(SSE-KMS), see Protecting Data Using Server-Side Encryption with KMS
keys
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
in the I<Amazon S3 User Guide>.

=item *

Use customer-provided encryption keys (SSE-C) E<ndash> If you want to
manage your own encryption keys, provide all the following headers in
the request.

=over

=item *

C<x-amz-server-side-encryption-customer-algorithm>

=item *

C<x-amz-server-side-encryption-customer-key>

=item *

C<x-amz-server-side-encryption-customer-key-MD5>

=back

For more information about server-side encryption with
customer-provided encryption keys (SSE-C), see Protecting data using
server-side encryption with customer-provided encryption keys (SSE-C)
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

=back

=item *

B<Directory buckets> - For directory buckets, there are only two
supported options for server-side encryption: server-side encryption
with Amazon S3 managed keys (SSE-S3) (C<AES256>) and server-side
encryption with KMS keys (SSE-KMS) (C<aws:kms>). We recommend that the
bucket's default encryption uses the desired encryption configuration
and you don't override the bucket default encryption in your
C<CreateSession> requests or C<PUT> object requests. Then, new objects
are automatically encrypted with the desired encryption settings. For
more information, see Protecting data with server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>. For more information about the
encryption overriding behaviors in directory buckets, see Specifying
server-side encryption with KMS for new object uploads
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).

In the Zonal endpoint API calls (except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html))
using the REST API, the encryption request headers must match the
encryption settings that are specified in the C<CreateSession> request.
You can't override the values of the encryption settings
(C<x-amz-server-side-encryption>,
C<x-amz-server-side-encryption-aws-kms-key-id>,
C<x-amz-server-side-encryption-context>, and
C<x-amz-server-side-encryption-bucket-key-enabled>) that are specified
in the C<CreateSession> request. You don't need to explicitly specify
these encryption settings values in Zonal endpoint API calls, and
Amazon S3 will use the encryption settings values from the
C<CreateSession> request to protect new objects in the directory
bucket.

When you use the CLI or the Amazon Web Services SDKs, for
C<CreateSession>, the session token refreshes automatically to avoid
service interruptions when a session expires. The CLI or the Amazon Web
Services SDKs use the bucket's default encryption configuration for the
C<CreateSession> request. It's not supported to override the encryption
settings values in the C<CreateSession> request. So in the Zonal
endpoint API calls (except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)),
the encryption request headers must match the default encryption
configuration of the directory bucket.

For directory buckets, when you perform a C<CreateMultipartUpload>
operation and an C<UploadPartCopy> operation, the request headers you
provide in the C<CreateMultipartUpload> request must match the default
encryption configuration of the destination bucket.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<CreateMultipartUpload>:

=over

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

ListMultipartUploads
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)

=back



=head2 CreateSession

=over

=item Bucket => Str

=item [BucketKeyEnabled => Bool]

=item [ServerSideEncryption => Str]

=item [SessionMode => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateSession>

Returns: a L<Paws::S3::CreateSessionOutput> instance

Creates a session that establishes temporary security credentials to
support fast authentication and authorization for the Zonal endpoint
API operations on directory buckets. For more information about Zonal
endpoint API operations that include the Availability Zone in the
request endpoint, see S3 Express One Zone APIs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-APIs.html)
in the I<Amazon S3 User Guide>.

To make Zonal endpoint API requests on a directory bucket, use the
C<CreateSession> API operation. Specifically, you grant
C<s3express:CreateSession> permission to a bucket in a bucket policy or
an IAM identity-based policy. Then, you use IAM credentials to make the
C<CreateSession> API request on the bucket, which returns temporary
security credentials that include the access key ID, secret access key,
session token, and expiration. These credentials have associated
permissions to access the Zonal endpoint API operations. After the
session is created, you donE<rsquo>t need to use other policies to
grant permissions to each Zonal endpoint API individually. Instead, in
your Zonal endpoint API requests, you sign your requests by applying
the temporary security credentials of the session to the request
headers and following the SigV4 protocol for authentication. You also
apply the session token to the C<x-amz-s3session-token> request header
for authorization. Temporary security credentials are scoped to the
bucket and expire after 5 minutes. After the expiration time, any calls
that you make with those credentials will fail. You must use IAM
credentials again to make a C<CreateSession> API request that generates
a new set of temporary credentials for use. Temporary credentials
cannot be extended or refreshed beyond the original specified interval.

If you use Amazon Web Services SDKs, SDKs handle the session token
refreshes automatically to avoid service interruptions when a session
expires. We recommend that you use the Amazon Web Services SDKs to
initiate and manage requests to the CreateSession API. For more
information, see Performance guidelines and design patterns
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-optimizing-performance-guidelines-design-patterns.html#s3-express-optimizing-performance-session-authentication)
in the I<Amazon S3 User Guide>.

=over

=item *

You must make requests for this API operation to the Zonal endpoint.
These endpoints support virtual-hosted-style requests in the format
C<https://I<bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.
Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=item *

B<C<CopyObject> API operation> - Unlike other Zonal endpoint API
operations, the C<CopyObject> API operation doesn't use the temporary
security credentials returned from the C<CreateSession> API operation
for authentication and authorization. For information about
authentication and authorization of the C<CopyObject> API operation on
directory buckets, see CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html).

=item *

B<C<HeadBucket> API operation> - Unlike other Zonal endpoint API
operations, the C<HeadBucket> API operation doesn't use the temporary
security credentials returned from the C<CreateSession> API operation
for authentication and authorization. For information about
authentication and authorization of the C<HeadBucket> API operation on
directory buckets, see HeadBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadBucket.html).

=back

=over

=item Permissions

To obtain temporary security credentials, you must create a bucket
policy or an IAM identity-based policy that grants
C<s3express:CreateSession> permission to the bucket. In a policy, you
can have the C<s3express:SessionMode> condition key to control who can
create a C<ReadWrite> or C<ReadOnly> session. For more information
about C<ReadWrite> or C<ReadOnly> sessions, see
C<x-amz-create-session-mode>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html#API_CreateSession_RequestParameters).
For example policies, see Example bucket policies for S3 Express One
Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html)
and Amazon Web Services Identity and Access Management (IAM)
identity-based policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html)
in the I<Amazon S3 User Guide>.

To grant cross-account access to Zonal endpoint API operations, the
bucket policy should also grant both accounts the
C<s3express:CreateSession> permission.

If you want to encrypt objects with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and the C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the target KMS key.

=item Encryption

For directory buckets, there are only two supported options for
server-side encryption: server-side encryption with Amazon S3 managed
keys (SSE-S3) (C<AES256>) and server-side encryption with KMS keys
(SSE-KMS) (C<aws:kms>). We recommend that the bucket's default
encryption uses the desired encryption configuration and you don't
override the bucket default encryption in your C<CreateSession>
requests or C<PUT> object requests. Then, new objects are automatically
encrypted with the desired encryption settings. For more information,
see Protecting data with server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>. For more information about the
encryption overriding behaviors in directory buckets, see Specifying
server-side encryption with KMS for new object uploads
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).

For Zonal endpoint (object-level) API operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-differences.html#s3-express-differences-api-operations)
except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html),
you authenticate and authorize requests through CreateSession
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
for low latency. To encrypt new objects in a directory bucket with
SSE-KMS, you must specify SSE-KMS as the directory bucket's default
encryption configuration with a KMS key (specifically, a customer
managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)).
Then, when a session is created for Zonal endpoint API operations, new
objects are automatically encrypted and decrypted with SSE-KMS and S3
Bucket Keys during the session.

Only 1 customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
is supported per directory bucket for the lifetime of the bucket. The
Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
(C<aws/s3>) isn't supported. After you specify SSE-KMS as your bucket's
default encryption configuration with a customer managed key, you can't
change the customer managed key for the bucket's SSE-KMS configuration.

In the Zonal endpoint API calls (except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html))
using the REST API, you can't override the values of the encryption
settings (C<x-amz-server-side-encryption>,
C<x-amz-server-side-encryption-aws-kms-key-id>,
C<x-amz-server-side-encryption-context>, and
C<x-amz-server-side-encryption-bucket-key-enabled>) from the
C<CreateSession> request. You don't need to explicitly specify these
encryption settings values in Zonal endpoint API calls, and Amazon S3
will use the encryption settings values from the C<CreateSession>
request to protect new objects in the directory bucket.

When you use the CLI or the Amazon Web Services SDKs, for
C<CreateSession>, the session token refreshes automatically to avoid
service interruptions when a session expires. The CLI or the Amazon Web
Services SDKs use the bucket's default encryption configuration for the
C<CreateSession> request. It's not supported to override the encryption
settings values in the C<CreateSession> request. Also, in the Zonal
endpoint API calls (except CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)),
it's not supported to override the values of the encryption settings
from the C<CreateSession> request.

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back



=head2 DeleteBucket

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucket>

Returns: nothing

Deletes the S3 bucket. All objects (including all object versions and
delete markers) in the bucket must be deleted before the bucket itself
can be deleted.

=over

=item *

B<Directory buckets> - If multipart uploads in a directory bucket are
in progress, you can't delete the bucket until all the in-progress
multipart uploads are aborted or completed.

=item *

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - You must have the
C<s3:DeleteBucket> permission on the specified bucket in a policy.

=item *

B<Directory bucket permissions> - You must have the
C<s3express:DeleteBucket> permission in an IAM identity-based policy
instead of a bucket policy. Cross-account access to this API operation
isn't supported. This operation can only be performed by the Amazon Web
Services account that owns the resource. For more information about
directory bucket policies and permissions, see Amazon Web Services
Identity and Access Management (IAM) for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<DeleteBucket>:

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=back



=head2 DeleteBucketAnalyticsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketAnalyticsConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Deletes an analytics configuration for the bucket (specified by the
analytics configuration ID).

To use this operation, you must have permissions to perform the
C<s3:PutAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about the Amazon S3 analytics feature, see Amazon S3
Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

The following operations are related to
C<DeleteBucketAnalyticsConfiguration>:

=over

=item *

GetBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)

=item *

ListBucketAnalyticsConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html)

=item *

PutBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)

=back



=head2 DeleteBucketCors

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketCors>

Returns: nothing

This operation is not supported for directory buckets.

Deletes the C<cors> configuration information set for the bucket.

To use this operation, you must have permission to perform the
C<s3:PutBucketCORS> action. The bucket owner has this permission by
default and can grant this permission to others.

For information about C<cors>, see Enabling Cross-Origin Resource
Sharing (https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in
the I<Amazon S3 User Guide>.

B<Related Resources>

=over

=item *

PutBucketCors
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html)

=item *

RESTOPTIONSobject
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)

=back



=head2 DeleteBucketEncryption

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketEncryption>

Returns: nothing

This implementation of the DELETE action resets the default encryption
for the bucket as server-side encryption with Amazon S3 managed keys
(SSE-S3).

=over

=item *

B<General purpose buckets> - For information about the bucket default
encryption feature, see Amazon S3 Bucket Default Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory buckets> - For directory buckets, there are only two
supported options for server-side encryption: SSE-S3 and SSE-KMS. For
information about the default encryption configuration in directory
buckets, see Setting default server-side encryption behavior for
directory buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-bucket-encryption.html).

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - The
C<s3:PutEncryptionConfiguration> permission is required in a policy.
The bucket owner has this permission by default. The bucket owner can
grant this permission to others. For more information about
permissions, see Permissions Related to Bucket Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

=item *

B<Directory bucket permissions> - To grant access to this API
operation, you must have the C<s3express:PutEncryptionConfiguration>
permission in an IAM identity-based policy instead of a bucket policy.
Cross-account access to this API operation isn't supported. This
operation can only be performed by the Amazon Web Services account that
owns the resource. For more information about directory bucket policies
and permissions, see Amazon Web Services Identity and Access Management
(IAM) for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<DeleteBucketEncryption>:

=over

=item *

PutBucketEncryption
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html)

=item *

GetBucketEncryption
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html)

=back



=head2 DeleteBucketIntelligentTieringConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketIntelligentTieringConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Deletes the S3 Intelligent-Tiering configuration from the specified
bucket.

The S3 Intelligent-Tiering storage class is designed to optimize
storage costs by automatically moving data to the most cost-effective
storage access tier, without performance impact or operational
overhead. S3 Intelligent-Tiering delivers automatic cost savings in
three low latency and high throughput access tiers. To get the lowest
storage cost on data that can be accessed in minutes to hours, you can
choose to activate additional archiving capabilities.

The S3 Intelligent-Tiering storage class is the ideal storage class for
data with unknown, changing, or unpredictable access patterns,
independent of object size or retention period. If the size of an
object is less than 128 KB, it is not monitored and not eligible for
auto-tiering. Smaller objects can be stored, but they are always
charged at the Frequent Access tier rates in the S3 Intelligent-Tiering
storage class.

For more information, see Storage class for automatically optimizing
frequently and infrequently accessed objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

Operations related to C<DeleteBucketIntelligentTieringConfiguration>
include:

=over

=item *

GetBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html)

=item *

PutBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html)

=item *

ListBucketIntelligentTieringConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html)

=back



=head2 DeleteBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketInventoryConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Deletes an inventory configuration (identified by the inventory ID)
from the bucket.

To use this operation, you must have permissions to perform the
C<s3:PutInventoryConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about the Amazon S3 inventory feature, see Amazon S3
Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html).

Operations related to C<DeleteBucketInventoryConfiguration> include:

=over

=item *

GetBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html)

=item *

PutBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html)

=item *

ListBucketInventoryConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html)

=back



=head2 DeleteBucketLifecycle

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketLifecycle>

Returns: nothing

Deletes the lifecycle configuration from the specified bucket. Amazon
S3 removes all the lifecycle configuration rules in the lifecycle
subresource associated with the bucket. Your objects never expire, and
Amazon S3 no longer automatically deletes any objects on the basis of
rules contained in the deleted lifecycle configuration.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - By default, all Amazon S3
resources are private, including buckets, objects, and related
subresources (for example, lifecycle configuration and website
configuration). Only the resource owner (that is, the Amazon Web
Services account that created it) can access the resource. The resource
owner can optionally grant access permissions to others by writing an
access policy. For this operation, a user must have the
C<s3:PutLifecycleConfiguration> permission.

For more information about permissions, see Managing Access Permissions
to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

=back

=over

=item *

B<Directory bucket permissions> - You must have the
C<s3express:PutLifecycleConfiguration> permission in an IAM
identity-based policy to use this operation. Cross-account access to
this API operation isn't supported. The resource owner can optionally
grant access permissions to others by creating a role or user for them
as long as they are within the same account as the owner and resource.

For more information about directory bucket policies and permissions,
see Authorizing Regional endpoint APIs with IAM
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=back

=over

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region>.amazonaws.com>.

=back

For more information about the object expiration, see Elements to
Describe Lifecycle Actions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

Related actions include:

=over

=item *

PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

=back



=head2 DeleteBucketMetadataTableConfiguration

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketMetadataTableConfiguration>

Returns: nothing

Deletes a metadata table configuration from a general purpose bucket.
For more information, see Accelerating data discovery with S3 Metadata
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-overview.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

To use this operation, you must have the
C<s3:DeleteBucketMetadataTableConfiguration> permission. For more
information, see Setting up permissions for configuring metadata tables
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-permissions.html)
in the I<Amazon S3 User Guide>.

=back

The following operations are related to
C<DeleteBucketMetadataTableConfiguration>:

=over

=item *

CreateBucketMetadataTableConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataTableConfiguration.html)

=item *

GetBucketMetadataTableConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetadataTableConfiguration.html)

=back



=head2 DeleteBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketMetricsConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Deletes a metrics configuration for the Amazon CloudWatch request
metrics (specified by the metrics configuration ID) from the bucket.
Note that this doesn't include the daily storage metrics.

To use this operation, you must have permissions to perform the
C<s3:PutMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<DeleteBucketMetricsConfiguration>:

=over

=item *

GetBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html)

=item *

PutBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html)

=item *

ListBucketMetricsConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html)

=item *

Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html)

=back



=head2 DeleteBucketOwnershipControls

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketOwnershipControls>

Returns: nothing

This operation is not supported for directory buckets.

Removes C<OwnershipControls> for an Amazon S3 bucket. To use this
operation, you must have the C<s3:PutBucketOwnershipControls>
permission. For more information about Amazon S3 permissions, see
Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

For information about Amazon S3 Object Ownership, see Using Object
Ownership
(https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).

The following operations are related to
C<DeleteBucketOwnershipControls>:

=over

=item *

GetBucketOwnershipControls

=item *

PutBucketOwnershipControls

=back



=head2 DeleteBucketPolicy

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketPolicy>

Returns: nothing

Deletes the policy of a specified bucket.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

If you are using an identity other than the root user of the Amazon Web
Services account that owns the bucket, the calling identity must both
have the C<DeleteBucketPolicy> permissions on the specified bucket and
belong to the bucket owner's account in order to use this operation.

If you don't have C<DeleteBucketPolicy> permissions, Amazon S3 returns
a C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

To ensure that bucket owners don't inadvertently lock themselves out of
their own buckets, the root principal in a bucket owner's Amazon Web
Services account can perform the C<GetBucketPolicy>,
C<PutBucketPolicy>, and C<DeleteBucketPolicy> API actions, even if
their bucket policy explicitly denies the root principal's access.
Bucket owner root principals can only be blocked from performing these
API actions by VPC endpoint policies and Amazon Web Services
Organizations policies.

=over

=item *

B<General purpose bucket permissions> - The C<s3:DeleteBucketPolicy>
permission is required in a policy. For more information about general
purpose buckets bucket policies, see Using Bucket Policies and User
Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API
operation, you must have the C<s3express:DeleteBucketPolicy> permission
in an IAM identity-based policy instead of a bucket policy.
Cross-account access to this API operation isn't supported. This
operation can only be performed by the Amazon Web Services account that
owns the resource. For more information about directory bucket policies
and permissions, see Amazon Web Services Identity and Access Management
(IAM) for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<DeleteBucketPolicy>

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=back



=head2 DeleteBucketReplication

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketReplication>

Returns: nothing

This operation is not supported for directory buckets.

Deletes the replication configuration from the bucket.

To use this operation, you must have permissions to perform the
C<s3:PutReplicationConfiguration> action. The bucket owner has these
permissions by default and can grant it to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

It can take a while for the deletion of a replication configuration to
fully propagate.

For information about replication configuration, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in
the I<Amazon S3 User Guide>.

The following operations are related to C<DeleteBucketReplication>:

=over

=item *

PutBucketReplication
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html)

=item *

GetBucketReplication
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html)

=back



=head2 DeleteBucketTagging

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketTagging>

Returns: nothing

This operation is not supported for directory buckets.

Deletes the tags from the bucket.

To use this operation, you must have permission to perform the
C<s3:PutBucketTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

The following operations are related to C<DeleteBucketTagging>:

=over

=item *

GetBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html)

=item *

PutBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html)

=back



=head2 DeleteBucketWebsite

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketWebsite>

Returns: nothing

This operation is not supported for directory buckets.

This action removes the website configuration for a bucket. Amazon S3
returns a C<200 OK> response upon successfully deleting a website
configuration on the specified bucket. You will get a C<200 OK>
response if the website configuration you are trying to delete does not
exist on the bucket. Amazon S3 returns a C<404> response if the bucket
specified in the request does not exist.

This DELETE action requires the C<S3:DeleteBucketWebsite> permission.
By default, only the bucket owner can delete the website configuration
attached to a bucket. However, bucket owners can grant other users
permission to delete the website configuration by writing a bucket
policy granting them the C<S3:DeleteBucketWebsite> permission.

For more information about hosting websites, see Hosting Websites on
Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

The following operations are related to C<DeleteBucketWebsite>:

=over

=item *

GetBucketWebsite
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketWebsite.html)

=item *

PutBucketWebsite
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html)

=back



=head2 DeleteObject

=over

=item Bucket => Str

=item Key => Str

=item [BypassGovernanceRetention => Bool]

=item [ExpectedBucketOwner => Str]

=item [IfMatch => Str]

=item [IfMatchLastModifiedTime => Str]

=item [IfMatchSize => Int]

=item [MFA => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObject>

Returns: a L<Paws::S3::DeleteObjectOutput> instance

Removes an object from a bucket. The behavior depends on the bucket's
versioning state:

=over

=item *

If bucket versioning is not enabled, the operation permanently deletes
the object.

=item *

If bucket versioning is enabled, the operation inserts a delete marker,
which becomes the current version of the object. To permanently delete
an object in a versioned bucket, you must include the objectE<rsquo>s
C<versionId> in the request. For more information about
versioning-enabled buckets, see Deleting object versions from a
versioning-enabled bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeletingObjectVersions.html).

=item *

If bucket versioning is suspended, the operation removes the object
that has a null C<versionId>, if there is one, and inserts a delete
marker that becomes the current version of the object. If there isn't
an object with a null C<versionId>, and all versions of the object have
a C<versionId>, Amazon S3 does not remove the object and only inserts a
delete marker. To permanently delete an object that has a C<versionId>,
you must include the objectE<rsquo>s C<versionId> in the request. For
more information about versioning-suspended buckets, see Deleting
objects from versioning-suspended buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeletingObjectsfromVersioningSuspendedBuckets.html).

=back

=over

=item *

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets. For this API operation, only the C<null> value of
the version ID is supported by directory buckets. You can only specify
C<null> to the C<versionId> query parameter in the request.

=item *

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

To remove a specific version, you must use the C<versionId> query
parameter. Using this query parameter permanently deletes the version.
If the object deleted is a delete marker, Amazon S3 sets the response
header C<x-amz-delete-marker> to true.

If the object you want to delete is in a bucket where the bucket
versioning configuration is MFA Delete enabled, you must include the
C<x-amz-mfa> request header in the DELETE C<versionId> request.
Requests that include C<x-amz-mfa> must use HTTPS. For more information
about MFA Delete, see Using MFA Delete
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html)
in the I<Amazon S3 User Guide>. To see sample requests that use
versioning, see Sample Request
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete).

B<Directory buckets> - MFA delete is not supported by directory
buckets.

You can delete objects by explicitly calling DELETE Object or calling
(PutBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html))
to enable Amazon S3 to remove them for you. If you want to block users
or accounts from removing or deleting objects from your bucket, you
must deny them the C<s3:DeleteObject>, C<s3:DeleteObjectVersion>, and
C<s3:PutLifeCycleConfiguration> actions.

B<Directory buckets> - S3 Lifecycle is not supported by directory
buckets.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - The following permissions are
required in your policies when your C<DeleteObjects> request includes
specific headers.

=over

=item *

B<C<s3:DeleteObject> > - To delete an object from a bucket, you must
always have the C<s3:DeleteObject> permission.

=item *

B<C<s3:DeleteObjectVersion> > - To delete a specific version of an
object from a versioning-enabled bucket, you must have the
C<s3:DeleteObjectVersion> permission.

=back

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following action is related to C<DeleteObject>:

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=back



=head2 DeleteObjects

=over

=item Bucket => Str

=item Delete => L<Paws::S3::Delete>

=item [BypassGovernanceRetention => Bool]

=item [ChecksumAlgorithm => Str]

=item [ExpectedBucketOwner => Str]

=item [MFA => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObjects>

Returns: a L<Paws::S3::DeleteObjectsOutput> instance

This operation enables you to delete multiple objects from a bucket
using a single HTTP request. If you know the object keys that you want
to delete, then this operation provides a suitable alternative to
sending individual delete requests, reducing per-request overhead.

The request can contain a list of up to 1,000 keys that you want to
delete. In the XML, you provide the object key names, and optionally,
version IDs if you want to delete a specific version of the object from
a versioning-enabled bucket. For each key, Amazon S3 performs a delete
operation and returns the result of that delete, success or failure, in
the response. If the object specified in the request isn't found,
Amazon S3 confirms the deletion by returning the result as deleted.

=over

=item *

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets.

=item *

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

The operation supports two modes for the response: verbose and quiet.
By default, the operation uses verbose mode in which the response
includes the result of deletion of each key in your request. In quiet
mode the response includes only keys where the delete operation
encountered an error. For a successful deletion in a quiet mode, the
operation does not return any information about the delete in the
response body.

When performing this action on an MFA Delete enabled bucket, that
attempts to delete any versioned objects, you must include an MFA
token. If you do not provide one, the entire request will fail, even if
there are non-versioned objects you are trying to delete. If you
provide an invalid token, whether there are versioned keys in the
request or not, the entire Multi-Object Delete request will fail. For
information about MFA Delete, see MFA Delete
(https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - MFA delete is not supported by directory
buckets.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - The following permissions are
required in your policies when your C<DeleteObjects> request includes
specific headers.

=over

=item *

B<C<s3:DeleteObject> > - To delete an object from a bucket, you must
always specify the C<s3:DeleteObject> permission.

=item *

B<C<s3:DeleteObjectVersion> > - To delete a specific version of an
object from a versioning-enabled bucket, you must specify the
C<s3:DeleteObjectVersion> permission.

=back

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item Content-MD5 request header

=over

=item *

B<General purpose bucket> - The Content-MD5 request header is required
for all Multi-Object Delete requests. Amazon S3 uses the header value
to ensure that your request body has not been altered in transit.

=item *

B<Directory bucket> - The Content-MD5 request header or a additional
checksum request header (including C<x-amz-checksum-crc32>,
C<x-amz-checksum-crc32c>, C<x-amz-checksum-sha1>, or
C<x-amz-checksum-sha256>) is required for all Multi-Object Delete
requests.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<DeleteObjects>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=back



=head2 DeleteObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item [ExpectedBucketOwner => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObjectTagging>

Returns: a L<Paws::S3::DeleteObjectTaggingOutput> instance

This operation is not supported for directory buckets.

Removes the entire tag set from the specified object. For more
information about managing object tags, see Object Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).

To use this operation, you must have permission to perform the
C<s3:DeleteObjectTagging> action.

To delete tags of a specific object version, add the C<versionId> query
parameter in the request. You will need permission for the
C<s3:DeleteObjectVersionTagging> action.

The following operations are related to C<DeleteObjectTagging>:

=over

=item *

PutObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html)

=item *

GetObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)

=back



=head2 DeletePublicAccessBlock

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeletePublicAccessBlock>

Returns: nothing

This operation is not supported for directory buckets.

Removes the C<PublicAccessBlock> configuration for an Amazon S3 bucket.
To use this operation, you must have the
C<s3:PutBucketPublicAccessBlock> permission. For more information about
permissions, see Permissions Related to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

The following operations are related to C<DeletePublicAccessBlock>:

=over

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=item *

GetPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)

=item *

PutPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html)

=item *

GetBucketPolicyStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicyStatus.html)

=back



=head2 GetBucketAccelerateConfiguration

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAccelerateConfiguration>

Returns: a L<Paws::S3::GetBucketAccelerateConfigurationOutput> instance

This operation is not supported for directory buckets.

This implementation of the GET action uses the C<accelerate>
subresource to return the Transfer Acceleration state of a bucket,
which is either C<Enabled> or C<Suspended>. Amazon S3 Transfer
Acceleration is a bucket-level feature that enables you to perform
faster data transfers to and from Amazon S3.

To use this operation, you must have permission to perform the
C<s3:GetAccelerateConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

You set the Transfer Acceleration state of an existing bucket to
C<Enabled> or C<Suspended> by using the
PutBucketAccelerateConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html)
operation.

A GET C<accelerate> request does not return a state value for a bucket
that has no transfer acceleration state. A bucket has no Transfer
Acceleration state if a state has never been set on the bucket.

For more information about transfer acceleration, see Transfer
Acceleration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html)
in the Amazon S3 User Guide.

The following operations are related to
C<GetBucketAccelerateConfiguration>:

=over

=item *

PutBucketAccelerateConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html)

=back



=head2 GetBucketAcl

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAcl>

Returns: a L<Paws::S3::GetBucketAclOutput> instance

This operation is not supported for directory buckets.

This implementation of the C<GET> action uses the C<acl> subresource to
return the access control list (ACL) of a bucket. To use C<GET> to
return the ACL of the bucket, you must have the C<READ_ACP> access to
the bucket. If C<READ_ACP> permission is granted to the anonymous user,
you can return the ACL of the bucket without using an authorization
header.

When you use this API operation with an access point, provide the alias
of the access point in place of the bucket name.

When you use this API operation with an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is
not valid, the error code C<InvalidAccessPointAliasError> is returned.
For more information about C<InvalidAccessPointAliasError>, see List of
Error Codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, requests to read ACLs are still supported and return the
C<bucket-owner-full-control> ACL with the owner being the account that
created the bucket. For more information, see Controlling object
ownership and disabling ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the I<Amazon S3 User Guide>.

The following operations are related to C<GetBucketAcl>:

=over

=item *

ListObjects
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html)

=back



=head2 GetBucketAnalyticsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAnalyticsConfiguration>

Returns: a L<Paws::S3::GetBucketAnalyticsConfigurationOutput> instance

This operation is not supported for directory buckets.

This implementation of the GET action returns an analytics
configuration (identified by the analytics configuration ID) from the
bucket.

To use this operation, you must have permissions to perform the
C<s3:GetAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

For information about Amazon S3 analytics feature, see Amazon S3
Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html)
in the I<Amazon S3 User Guide>.

The following operations are related to
C<GetBucketAnalyticsConfiguration>:

=over

=item *

DeleteBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)

=item *

ListBucketAnalyticsConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html)

=item *

PutBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)

=back



=head2 GetBucketCors

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketCors>

Returns: a L<Paws::S3::GetBucketCorsOutput> instance

This operation is not supported for directory buckets.

Returns the Cross-Origin Resource Sharing (CORS) configuration
information set for the bucket.

To use this operation, you must have permission to perform the
C<s3:GetBucketCORS> action. By default, the bucket owner has this
permission and can grant it to others.

When you use this API operation with an access point, provide the alias
of the access point in place of the bucket name.

When you use this API operation with an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is
not valid, the error code C<InvalidAccessPointAliasError> is returned.
For more information about C<InvalidAccessPointAliasError>, see List of
Error Codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

For more information about CORS, see Enabling Cross-Origin Resource
Sharing (https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html).

The following operations are related to C<GetBucketCors>:

=over

=item *

PutBucketCors
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html)

=item *

DeleteBucketCors
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketCors.html)

=back



=head2 GetBucketEncryption

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketEncryption>

Returns: a L<Paws::S3::GetBucketEncryptionOutput> instance

Returns the default encryption configuration for an Amazon S3 bucket.
By default, all buckets have a default encryption configuration that
uses server-side encryption with Amazon S3 managed keys (SSE-S3).

=over

=item *

B<General purpose buckets> - For information about the bucket default
encryption feature, see Amazon S3 Bucket Default Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory buckets> - For directory buckets, there are only two
supported options for server-side encryption: SSE-S3 and SSE-KMS. For
information about the default encryption configuration in directory
buckets, see Setting default server-side encryption behavior for
directory buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-bucket-encryption.html).

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - The
C<s3:GetEncryptionConfiguration> permission is required in a policy.
The bucket owner has this permission by default. The bucket owner can
grant this permission to others. For more information about
permissions, see Permissions Related to Bucket Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

=item *

B<Directory bucket permissions> - To grant access to this API
operation, you must have the C<s3express:GetEncryptionConfiguration>
permission in an IAM identity-based policy instead of a bucket policy.
Cross-account access to this API operation isn't supported. This
operation can only be performed by the Amazon Web Services account that
owns the resource. For more information about directory bucket policies
and permissions, see Amazon Web Services Identity and Access Management
(IAM) for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<GetBucketEncryption>:

=over

=item *

PutBucketEncryption
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html)

=item *

DeleteBucketEncryption
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html)

=back



=head2 GetBucketIntelligentTieringConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketIntelligentTieringConfiguration>

Returns: a L<Paws::S3::GetBucketIntelligentTieringConfigurationOutput> instance

This operation is not supported for directory buckets.

Gets the S3 Intelligent-Tiering configuration from the specified
bucket.

The S3 Intelligent-Tiering storage class is designed to optimize
storage costs by automatically moving data to the most cost-effective
storage access tier, without performance impact or operational
overhead. S3 Intelligent-Tiering delivers automatic cost savings in
three low latency and high throughput access tiers. To get the lowest
storage cost on data that can be accessed in minutes to hours, you can
choose to activate additional archiving capabilities.

The S3 Intelligent-Tiering storage class is the ideal storage class for
data with unknown, changing, or unpredictable access patterns,
independent of object size or retention period. If the size of an
object is less than 128 KB, it is not monitored and not eligible for
auto-tiering. Smaller objects can be stored, but they are always
charged at the Frequent Access tier rates in the S3 Intelligent-Tiering
storage class.

For more information, see Storage class for automatically optimizing
frequently and infrequently accessed objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

Operations related to C<GetBucketIntelligentTieringConfiguration>
include:

=over

=item *

DeleteBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html)

=item *

PutBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html)

=item *

ListBucketIntelligentTieringConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html)

=back



=head2 GetBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketInventoryConfiguration>

Returns: a L<Paws::S3::GetBucketInventoryConfigurationOutput> instance

This operation is not supported for directory buckets.

Returns an inventory configuration (identified by the inventory
configuration ID) from the bucket.

To use this operation, you must have permissions to perform the
C<s3:GetInventoryConfiguration> action. The bucket owner has this
permission by default and can grant this permission to others. For more
information about permissions, see Permissions Related to Bucket
Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about the Amazon S3 inventory feature, see Amazon S3
Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html).

The following operations are related to
C<GetBucketInventoryConfiguration>:

=over

=item *

DeleteBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html)

=item *

ListBucketInventoryConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html)

=item *

PutBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html)

=back



=head2 GetBucketLifecycle

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLifecycle>

Returns: a L<Paws::S3::GetBucketLifecycleOutput> instance

For an updated version of this API, see GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html).
If you configured a bucket lifecycle using the C<filter> element, you
should see the updated version of this topic. This topic is provided
for backward compatibility.

This operation is not supported for directory buckets.

Returns the lifecycle configuration information set on the bucket. For
information about lifecycle configuration, see Object Lifecycle
Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

To use this operation, you must have permission to perform the
C<s3:GetLifecycleConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

C<GetBucketLifecycle> has the following special error:

=over

=item *

Error code: C<NoSuchLifecycleConfiguration>

=over

=item *

Description: The lifecycle configuration does not exist.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

The following operations are related to C<GetBucketLifecycle>:

=over

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

=item *

PutBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html)

=item *

DeleteBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)

=back



=head2 GetBucketLifecycleConfiguration

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLifecycleConfiguration>

Returns: a L<Paws::S3::GetBucketLifecycleConfigurationOutput> instance

Returns the lifecycle configuration information set on the bucket. For
information about lifecycle configuration, see Object Lifecycle
Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

Bucket lifecycle configuration now supports specifying a lifecycle rule
using an object key name prefix, one or more object tags, object size,
or any combination of these. Accordingly, this section describes the
latest API, which is compatible with the new functionality. The
previous version of the API supported filtering based only on an object
key name prefix, which is supported for general purpose buckets for
backward compatibility. For the related API description, see
GetBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html).

Lifecyle configurations for directory buckets only support expiring
objects and cancelling multipart uploads. Expiring of versioned
objects, transitions and tag filters are not supported.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - By default, all Amazon S3
resources are private, including buckets, objects, and related
subresources (for example, lifecycle configuration and website
configuration). Only the resource owner (that is, the Amazon Web
Services account that created it) can access the resource. The resource
owner can optionally grant access permissions to others by writing an
access policy. For this operation, a user must have the
C<s3:GetLifecycleConfiguration> permission.

For more information about permissions, see Managing Access Permissions
to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

=back

=over

=item *

B<Directory bucket permissions> - You must have the
C<s3express:GetLifecycleConfiguration> permission in an IAM
identity-based policy to use this operation. Cross-account access to
this API operation isn't supported. The resource owner can optionally
grant access permissions to others by creating a role or user for them
as long as they are within the same account as the owner and resource.

For more information about directory bucket policies and permissions,
see Authorizing Regional endpoint APIs with IAM
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region>.amazonaws.com>.

=back

C<GetBucketLifecycleConfiguration> has the following special error:

=over

=item *

Error code: C<NoSuchLifecycleConfiguration>

=over

=item *

Description: The lifecycle configuration does not exist.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

The following operations are related to
C<GetBucketLifecycleConfiguration>:

=over

=item *

GetBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html)

=item *

PutBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html)

=item *

DeleteBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)

=back



=head2 GetBucketLocation

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLocation>

Returns: a L<Paws::S3::GetBucketLocationOutput> instance

This operation is not supported for directory buckets.

Returns the Region the bucket resides in. You set the bucket's Region
using the C<LocationConstraint> request parameter in a C<CreateBucket>
request. For more information, see CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html).

When you use this API operation with an access point, provide the alias
of the access point in place of the bucket name.

When you use this API operation with an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is
not valid, the error code C<InvalidAccessPointAliasError> is returned.
For more information about C<InvalidAccessPointAliasError>, see List of
Error Codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

We recommend that you use HeadBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadBucket.html)
to return the Region that a bucket resides in. For backward
compatibility, Amazon S3 continues to support GetBucketLocation.

The following operations are related to C<GetBucketLocation>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=back



=head2 GetBucketLogging

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLogging>

Returns: a L<Paws::S3::GetBucketLoggingOutput> instance

This operation is not supported for directory buckets.

Returns the logging status of a bucket and the permissions users have
to view and modify that status.

The following operations are related to C<GetBucketLogging>:

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

PutBucketLogging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLogging.html)

=back



=head2 GetBucketMetadataTableConfiguration

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketMetadataTableConfiguration>

Returns: a L<Paws::S3::GetBucketMetadataTableConfigurationOutput> instance

Retrieves the metadata table configuration for a general purpose
bucket. For more information, see Accelerating data discovery with S3
Metadata
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-overview.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

To use this operation, you must have the
C<s3:GetBucketMetadataTableConfiguration> permission. For more
information, see Setting up permissions for configuring metadata tables
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-permissions.html)
in the I<Amazon S3 User Guide>.

=back

The following operations are related to
C<GetBucketMetadataTableConfiguration>:

=over

=item *

CreateBucketMetadataTableConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataTableConfiguration.html)

=item *

DeleteBucketMetadataTableConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetadataTableConfiguration.html)

=back



=head2 GetBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketMetricsConfiguration>

Returns: a L<Paws::S3::GetBucketMetricsConfigurationOutput> instance

This operation is not supported for directory buckets.

Gets a metrics configuration (specified by the metrics configuration
ID) from the bucket. Note that this doesn't include the daily storage
metrics.

To use this operation, you must have permissions to perform the
C<s3:GetMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<GetBucketMetricsConfiguration>:

=over

=item *

PutBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html)

=item *

DeleteBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html)

=item *

ListBucketMetricsConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html)

=item *

Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html)

=back



=head2 GetBucketNotification

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketNotification>

Returns: a L<Paws::S3::NotificationConfigurationDeprecated> instance

This operation is not supported for directory buckets.

No longer used, see GetBucketNotificationConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html).


=head2 GetBucketNotificationConfiguration

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketNotificationConfiguration>

Returns: a L<Paws::S3::NotificationConfiguration> instance

This operation is not supported for directory buckets.

Returns the notification configuration of a bucket.

If notifications are not enabled on the bucket, the action returns an
empty C<NotificationConfiguration> element.

By default, you must be the bucket owner to read the notification
configuration of a bucket. However, the bucket owner can use a bucket
policy to grant permission to other users to read this configuration
with the C<s3:GetBucketNotification> permission.

When you use this API operation with an access point, provide the alias
of the access point in place of the bucket name.

When you use this API operation with an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is
not valid, the error code C<InvalidAccessPointAliasError> is returned.
For more information about C<InvalidAccessPointAliasError>, see List of
Error Codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

For more information about setting and reading the notification
configuration on a bucket, see Setting Up Notification of Bucket Events
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
For more information about bucket policies, see Using Bucket Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

The following action is related to C<GetBucketNotification>:

=over

=item *

PutBucketNotification
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotification.html)

=back



=head2 GetBucketOwnershipControls

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketOwnershipControls>

Returns: a L<Paws::S3::GetBucketOwnershipControlsOutput> instance

This operation is not supported for directory buckets.

Retrieves C<OwnershipControls> for an Amazon S3 bucket. To use this
operation, you must have the C<s3:GetBucketOwnershipControls>
permission. For more information about Amazon S3 permissions, see
Specifying permissions in a policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

For information about Amazon S3 Object Ownership, see Using Object
Ownership
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

The following operations are related to C<GetBucketOwnershipControls>:

=over

=item *

PutBucketOwnershipControls

=item *

DeleteBucketOwnershipControls

=back



=head2 GetBucketPolicy

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketPolicy>

Returns: a L<Paws::S3::GetBucketPolicyOutput> instance

Returns the policy of a specified bucket.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

If you are using an identity other than the root user of the Amazon Web
Services account that owns the bucket, the calling identity must both
have the C<GetBucketPolicy> permissions on the specified bucket and
belong to the bucket owner's account in order to use this operation.

If you don't have C<GetBucketPolicy> permissions, Amazon S3 returns a
C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

To ensure that bucket owners don't inadvertently lock themselves out of
their own buckets, the root principal in a bucket owner's Amazon Web
Services account can perform the C<GetBucketPolicy>,
C<PutBucketPolicy>, and C<DeleteBucketPolicy> API actions, even if
their bucket policy explicitly denies the root principal's access.
Bucket owner root principals can only be blocked from performing these
API actions by VPC endpoint policies and Amazon Web Services
Organizations policies.

=over

=item *

B<General purpose bucket permissions> - The C<s3:GetBucketPolicy>
permission is required in a policy. For more information about general
purpose buckets bucket policies, see Using Bucket Policies and User
Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API
operation, you must have the C<s3express:GetBucketPolicy> permission in
an IAM identity-based policy instead of a bucket policy. Cross-account
access to this API operation isn't supported. This operation can only
be performed by the Amazon Web Services account that owns the resource.
For more information about directory bucket policies and permissions,
see Amazon Web Services Identity and Access Management (IAM) for S3
Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=back

=item Example bucket policies

B<General purpose buckets example bucket policies> - See Bucket policy
examples
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html)
in the I<Amazon S3 User Guide>.

B<Directory bucket example bucket policies> - See Example bucket
policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html)
in the I<Amazon S3 User Guide>.

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following action is related to C<GetBucketPolicy>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=back



=head2 GetBucketPolicyStatus

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketPolicyStatus>

Returns: a L<Paws::S3::GetBucketPolicyStatusOutput> instance

This operation is not supported for directory buckets.

Retrieves the policy status for an Amazon S3 bucket, indicating whether
the bucket is public. In order to use this operation, you must have the
C<s3:GetBucketPolicyStatus> permission. For more information about
Amazon S3 permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

For more information about when Amazon S3 considers a bucket public,
see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to C<GetBucketPolicyStatus>:

=over

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=item *

GetPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)

=item *

PutPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html)

=item *

DeletePublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)

=back



=head2 GetBucketReplication

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketReplication>

Returns: a L<Paws::S3::GetBucketReplicationOutput> instance

This operation is not supported for directory buckets.

Returns the replication configuration of a bucket.

It can take a while to propagate the put or delete a replication
configuration to all Amazon S3 systems. Therefore, a get request soon
after put or delete can return a wrong result.

For information about replication configuration, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in
the I<Amazon S3 User Guide>.

This action requires permissions for the
C<s3:GetReplicationConfiguration> action. For more information about
permissions, see Using Bucket Policies and User Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

If you include the C<Filter> element in a replication configuration,
you must also include the C<DeleteMarkerReplication> and C<Priority>
elements. The response also returns those elements.

For information about C<GetBucketReplication> errors, see List of
replication-related error codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList)

The following operations are related to C<GetBucketReplication>:

=over

=item *

PutBucketReplication
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html)

=item *

DeleteBucketReplication
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html)

=back



=head2 GetBucketRequestPayment

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketRequestPayment>

Returns: a L<Paws::S3::GetBucketRequestPaymentOutput> instance

This operation is not supported for directory buckets.

Returns the request payment configuration of a bucket. To use this
version of the operation, you must be the bucket owner. For more
information, see Requester Pays Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

The following operations are related to C<GetBucketRequestPayment>:

=over

=item *

ListObjects
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html)

=back



=head2 GetBucketTagging

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketTagging>

Returns: a L<Paws::S3::GetBucketTaggingOutput> instance

This operation is not supported for directory buckets.

Returns the tag set associated with the bucket.

To use this operation, you must have permission to perform the
C<s3:GetBucketTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

C<GetBucketTagging> has the following special error:

=over

=item *

Error code: C<NoSuchTagSet>

=over

=item *

Description: There is no tag set associated with the bucket.

=back

=back

The following operations are related to C<GetBucketTagging>:

=over

=item *

PutBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html)

=item *

DeleteBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html)

=back



=head2 GetBucketVersioning

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketVersioning>

Returns: a L<Paws::S3::GetBucketVersioningOutput> instance

This operation is not supported for directory buckets.

Returns the versioning state of a bucket.

To retrieve the versioning state of a bucket, you must be the bucket
owner.

This implementation also returns the MFA Delete status of the
versioning state. If the MFA Delete status is C<enabled>, the bucket
owner must use an authentication device to change the versioning state
of the bucket.

The following operations are related to C<GetBucketVersioning>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=back



=head2 GetBucketWebsite

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetBucketWebsite>

Returns: a L<Paws::S3::GetBucketWebsiteOutput> instance

This operation is not supported for directory buckets.

Returns the website configuration for a bucket. To host website on
Amazon S3, you can configure a bucket as website by adding a website
configuration. For more information about hosting websites, see Hosting
Websites on Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

This GET action requires the C<S3:GetBucketWebsite> permission. By
default, only the bucket owner can read the bucket website
configuration. However, bucket owners can allow other users to read the
website configuration by writing a bucket policy granting them the
C<S3:GetBucketWebsite> permission.

The following operations are related to C<GetBucketWebsite>:

=over

=item *

DeleteBucketWebsite
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketWebsite.html)

=item *

PutBucketWebsite
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html)

=back



=head2 GetObject

=over

=item Bucket => Str

=item Key => Str

=item [ChecksumMode => Str]

=item [ExpectedBucketOwner => Str]

=item [IfMatch => Str]

=item [IfModifiedSince => Str]

=item [IfNoneMatch => Str]

=item [IfUnmodifiedSince => Str]

=item [PartNumber => Int]

=item [Range => Str]

=item [RequestPayer => Str]

=item [ResponseCacheControl => Str]

=item [ResponseContentDisposition => Str]

=item [ResponseContentEncoding => Str]

=item [ResponseContentLanguage => Str]

=item [ResponseContentType => Str]

=item [ResponseExpires => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObject>

Returns: a L<Paws::S3::GetObjectOutput> instance

Retrieves an object from Amazon S3.

In the C<GetObject> request, specify the full key name for the object.

B<General purpose buckets> - Both the virtual-hosted-style requests and
the path-style requests are supported. For a virtual hosted-style
request example, if you have the object
C<photos/2006/February/sample.jpg>, specify the object key name as
C</photos/2006/February/sample.jpg>. For a path-style request example,
if you have the object C<photos/2006/February/sample.jpg> in the bucket
named C<examplebucket>, specify the object key name as
C</examplebucket/photos/2006/February/sample.jpg>. For more information
about request types, see HTTP Host Header Bucket Specification
(https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - Only virtual-hosted-style requests are
supported. For a virtual hosted-style request example, if you have the
object C<photos/2006/February/sample.jpg> in the bucket named
C<amzn-s3-demo-bucket--usw2-az1--x-s3>, specify the object key name as
C</photos/2006/February/sample.jpg>. Also, when you make requests to
this API operation, your requests are sent to the Zonal endpoint. These
endpoints support virtual-hosted-style requests in the format
C<https://I<bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - You must have the required
permissions in a policy. To use C<GetObject>, you must have the C<READ>
access to the object (or version). If you grant C<READ> access to the
anonymous user, the C<GetObject> operation returns the object without
using an authorization header. For more information, see Specifying
permissions in a policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
in the I<Amazon S3 User Guide>.

If you include a C<versionId> in your request header, you must have the
C<s3:GetObjectVersion> permission to access a specific version of an
object. The C<s3:GetObject> permission is not required in this
scenario.

If you request the current version of an object without a specific
C<versionId> in the request header, only the C<s3:GetObject> permission
is required. The C<s3:GetObjectVersion> permission is not required in
this scenario.

If the object that you request doesnE<rsquo>t exist, the error that
Amazon S3 returns depends on whether you also have the C<s3:ListBucket>
permission.

=over

=item *

If you have the C<s3:ListBucket> permission on the bucket, Amazon S3
returns an HTTP status code C<404 Not Found> error.

=item *

If you donE<rsquo>t have the C<s3:ListBucket> permission, Amazon S3
returns an HTTP status code C<403 Access Denied> error.

=back

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

If the object is encrypted using SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

=back

=item Storage classes

If the object you are retrieving is stored in the S3 Glacier Flexible
Retrieval storage class, the S3 Glacier Deep Archive storage class, the
S3 Intelligent-Tiering Archive Access tier, or the S3
Intelligent-Tiering Deep Archive Access tier, before you can retrieve
the object you must first restore a copy using RestoreObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html).
Otherwise, this operation returns an C<InvalidObjectState> error. For
information about restoring archived objects, see Restoring Archived
Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets > - Directory buckets only support
C<EXPRESS_ONEZONE> (the S3 Express One Zone storage class) in
Availability Zones and C<ONEZONE_IA> (the S3 One Zone-Infrequent Access
storage class) in Dedicated Local Zones. Unsupported storage class
values won't write a destination object and will respond with the HTTP
status code C<400 Bad Request>.

=item Encryption

Encryption request headers, like C<x-amz-server-side-encryption>,
should not be sent for the C<GetObject> requests, if your object uses
server-side encryption with Amazon S3 managed encryption keys (SSE-S3),
server-side encryption with Key Management Service (KMS) keys
(SSE-KMS), or dual-layer server-side encryption with Amazon Web
Services KMS keys (DSSE-KMS). If you include the header in your
C<GetObject> requests for the object that uses these types of keys,
youE<rsquo>ll get an HTTP C<400 Bad Request> error.

B<Directory buckets> - For directory buckets, there are only two
supported options for server-side encryption: SSE-S3 and SSE-KMS. SSE-C
isn't supported. For more information, see Protecting data with
server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>.

=item Overriding response header values through the request

There are times when you want to override certain response header
values of a C<GetObject> response. For example, you might override the
C<Content-Disposition> response header value through your C<GetObject>
request.

You can override values for a set of response headers. These modified
response header values are included only in a successful response, that
is, when the HTTP status code C<200 OK> is returned. The headers you
can override using the following query parameters in the request are a
subset of the headers that Amazon S3 accepts when you create an object.

The response headers that you can override for the C<GetObject>
response are C<Cache-Control>, C<Content-Disposition>,
C<Content-Encoding>, C<Content-Language>, C<Content-Type>, and
C<Expires>.

To override values for a set of response headers in the C<GetObject>
response, you can use the following query parameters in the request.

=over

=item *

C<response-cache-control>

=item *

C<response-content-disposition>

=item *

C<response-content-encoding>

=item *

C<response-content-language>

=item *

C<response-content-type>

=item *

C<response-expires>

=back

When you use these parameters, you must sign the request by using
either an Authorization header or a presigned URL. These parameters
cannot be used with an unsigned (anonymous) request.

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<GetObject>:

=over

=item *

ListBuckets
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)

=item *

GetObjectAcl
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)

=back



=head2 GetObjectAcl

=over

=item Bucket => Str

=item Key => Str

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectAcl>

Returns: a L<Paws::S3::GetObjectAclOutput> instance

This operation is not supported for directory buckets.

Returns the access control list (ACL) of an object. To use this
operation, you must have C<s3:GetObjectAcl> permissions or C<READ_ACP>
access to the object. For more information, see Mapping of ACL
permissions and access policy permissions
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#acl-access-policy-permission-mapping)
in the I<Amazon S3 User Guide>

This functionality is not supported for Amazon S3 on Outposts.

By default, GET returns ACL information about the current version of an
object. To return ACL information about a different version, use the
versionId subresource.

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, requests to read ACLs are still supported and return the
C<bucket-owner-full-control> ACL with the owner being the account that
created the bucket. For more information, see Controlling object
ownership and disabling ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the I<Amazon S3 User Guide>.

The following operations are related to C<GetObjectAcl>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=back



=head2 GetObjectAttributes

=over

=item Bucket => Str

=item Key => Str

=item ObjectAttributes => ArrayRef[Str|Undef]

=item [ExpectedBucketOwner => Str]

=item [MaxParts => Int]

=item [PartNumberMarker => Int]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectAttributes>

Returns: a L<Paws::S3::GetObjectAttributesOutput> instance

Retrieves all the metadata from an object without returning the object
itself. This operation is useful if you're interested only in an
object's metadata.

C<GetObjectAttributes> combines the functionality of C<HeadObject> and
C<ListParts>. All of the data returned with each of those individual
calls can be returned with a single call to C<GetObjectAttributes>.

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - To use C<GetObjectAttributes>,
you must have READ access to the object. The permissions that you need
to use this operation depend on whether the bucket is versioned. If the
bucket is versioned, you need both the C<s3:GetObjectVersion> and
C<s3:GetObjectVersionAttributes> permissions for this operation. If the
bucket is not versioned, you need the C<s3:GetObject> and
C<s3:GetObjectAttributes> permissions. For more information, see
Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
in the I<Amazon S3 User Guide>. If the object that you request does not
exist, the error Amazon S3 returns depends on whether you also have the
C<s3:ListBucket> permission.

=over

=item *

If you have the C<s3:ListBucket> permission on the bucket, Amazon S3
returns an HTTP status code C<404 Not Found> ("no such key") error.

=item *

If you don't have the C<s3:ListBucket> permission, Amazon S3 returns an
HTTP status code C<403 Forbidden> ("access denied") error.

=back

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

If the object is encrypted with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

=back

=item Encryption

Encryption request headers, like C<x-amz-server-side-encryption>,
should not be sent for C<HEAD> requests if your object uses server-side
encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer
server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or
server-side encryption with Amazon S3 managed encryption keys (SSE-S3).
The C<x-amz-server-side-encryption> header is used when you C<PUT> an
object to S3 and want to specify the encryption method. If you include
this header in a C<GET> request for an object that uses these types of
keys, youE<rsquo>ll get an HTTP C<400 Bad Request> error. It's because
the encryption method can't be changed when you retrieve the object.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you retrieve the metadata from the object, you
must use the following headers to provide the encryption key for the
server to be able to retrieve the object's metadata. The headers are:

=over

=item *

C<x-amz-server-side-encryption-customer-algorithm>

=item *

C<x-amz-server-side-encryption-customer-key>

=item *

C<x-amz-server-side-encryption-customer-key-MD5>

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

B<Directory bucket permissions> - For directory buckets, there are only
two supported options for server-side encryption: server-side
encryption with Amazon S3 managed keys (SSE-S3) (C<AES256>) and
server-side encryption with KMS keys (SSE-KMS) (C<aws:kms>). We
recommend that the bucket's default encryption uses the desired
encryption configuration and you don't override the bucket default
encryption in your C<CreateSession> requests or C<PUT> object requests.
Then, new objects are automatically encrypted with the desired
encryption settings. For more information, see Protecting data with
server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>. For more information about the
encryption overriding behaviors in directory buckets, see Specifying
server-side encryption with KMS for new object uploads
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).

=item Versioning

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets. For this API operation, only the C<null> value of
the version ID is supported by directory buckets. You can only specify
C<null> to the C<versionId> query parameter in the request.

=item Conditional request headers

Consider the following when using request headers:

=over

=item *

If both of the C<If-Match> and C<If-Unmodified-Since> headers are
present in the request as follows, then Amazon S3 returns the HTTP
status code C<200 OK> and the data requested:

=over

=item *

C<If-Match> condition evaluates to C<true>.

=item *

C<If-Unmodified-Since> condition evaluates to C<false>.

=back

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).

=item *

If both of the C<If-None-Match> and C<If-Modified-Since> headers are
present in the request as follows, then Amazon S3 returns the HTTP
status code C<304 Not Modified>:

=over

=item *

C<If-None-Match> condition evaluates to C<false>.

=item *

C<If-Modified-Since> condition evaluates to C<true>.

=back

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following actions are related to C<GetObjectAttributes>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

GetObjectAcl
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)

=item *

GetObjectLegalHold
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLegalHold.html)

=item *

GetObjectLockConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLockConfiguration.html)

=item *

GetObjectRetention
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectRetention.html)

=item *

GetObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)

=item *

HeadObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadObject.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=back



=head2 GetObjectLegalHold

=over

=item Bucket => Str

=item Key => Str

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectLegalHold>

Returns: a L<Paws::S3::GetObjectLegalHoldOutput> instance

This operation is not supported for directory buckets.

Gets an object's current legal hold status. For more information, see
Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

This functionality is not supported for Amazon S3 on Outposts.

The following action is related to C<GetObjectLegalHold>:

=over

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=back



=head2 GetObjectLockConfiguration

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectLockConfiguration>

Returns: a L<Paws::S3::GetObjectLockConfigurationOutput> instance

This operation is not supported for directory buckets.

Gets the Object Lock configuration for a bucket. The rule specified in
the Object Lock configuration will be applied by default to every new
object placed in the specified bucket. For more information, see
Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

The following action is related to C<GetObjectLockConfiguration>:

=over

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=back



=head2 GetObjectRetention

=over

=item Bucket => Str

=item Key => Str

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectRetention>

Returns: a L<Paws::S3::GetObjectRetentionOutput> instance

This operation is not supported for directory buckets.

Retrieves an object's retention settings. For more information, see
Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

This functionality is not supported for Amazon S3 on Outposts.

The following action is related to C<GetObjectRetention>:

=over

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=back



=head2 GetObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectTagging>

Returns: a L<Paws::S3::GetObjectTaggingOutput> instance

This operation is not supported for directory buckets.

Returns the tag-set of an object. You send the GET request against the
tagging subresource associated with the object.

To use this operation, you must have permission to perform the
C<s3:GetObjectTagging> action. By default, the GET action returns
information about current version of an object. For a versioned bucket,
you can have multiple versions of an object in your bucket. To retrieve
tags of any other version, use the versionId query parameter. You also
need permission for the C<s3:GetObjectVersionTagging> action.

By default, the bucket owner has this permission and can grant this
permission to others.

For information about the Amazon S3 object tagging feature, see Object
Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).

The following actions are related to C<GetObjectTagging>:

=over

=item *

DeleteObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html)

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=item *

PutObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html)

=back



=head2 GetObjectTorrent

=over

=item Bucket => Str

=item Key => Str

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectTorrent>

Returns: a L<Paws::S3::GetObjectTorrentOutput> instance

This operation is not supported for directory buckets.

Returns torrent files from a bucket. BitTorrent can save you bandwidth
when you're distributing large files.

You can get torrent only for objects that are less than 5 GB in size,
and that are not encrypted using server-side encryption with a
customer-provided encryption key.

To use GET, you must have READ access to the object.

This functionality is not supported for Amazon S3 on Outposts.

The following action is related to C<GetObjectTorrent>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=back



=head2 GetPublicAccessBlock

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetPublicAccessBlock>

Returns: a L<Paws::S3::GetPublicAccessBlockOutput> instance

This operation is not supported for directory buckets.

Retrieves the C<PublicAccessBlock> configuration for an Amazon S3
bucket. To use this operation, you must have the
C<s3:GetBucketPublicAccessBlock> permission. For more information about
Amazon S3 permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

When Amazon S3 evaluates the C<PublicAccessBlock> configuration for a
bucket or an object, it checks the C<PublicAccessBlock> configuration
for both the bucket (or the bucket that contains the object) and the
bucket owner's account. If the C<PublicAccessBlock> settings are
different between the bucket and the account, Amazon S3 uses the most
restrictive combination of the bucket-level and account-level settings.

For more information about when Amazon S3 considers a bucket or an
object public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to C<GetPublicAccessBlock>:

=over

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=item *

PutPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html)

=item *

GetPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)

=item *

DeletePublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)

=back



=head2 HeadBucket

=over

=item Bucket => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::HeadBucket>

Returns: a L<Paws::S3::HeadBucketOutput> instance

You can use this operation to determine if a bucket exists and if you
have permission to access it. The action returns a C<200 OK> if the
bucket exists and you have permission to access it.

If the bucket does not exist or you do not have permission to access
it, the C<HEAD> request returns a generic C<400 Bad Request>, C<403
Forbidden> or C<404 Not Found> code. A message body is not included, so
you cannot determine the exception beyond these HTTP response codes.

=over

=item Authentication and authorization

B<General purpose buckets> - Request to public buckets that grant the
s3:ListBucket permission publicly do not need to be signed. All other
C<HeadBucket> requests must be authenticated and signed by using IAM
credentials (access key ID and secret access key for the IAM
identities). All headers with the C<x-amz-> prefix, including
C<x-amz-copy-source>, must be signed. For more information, see REST
Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).

B<Directory buckets> - You must use IAM credentials to authenticate and
authorize your access to the C<HeadBucket> API operation, instead of
using the temporary security credentials through the C<CreateSession>
API operation.

Amazon Web Services CLI or SDKs handles authentication and
authorization on your behalf.

=item Permissions

=over

=item *

B<General purpose bucket permissions> - To use this operation, you must
have permissions to perform the C<s3:ListBucket> action. The bucket
owner has this permission by default and can grant this permission to
others. For more information about permissions, see Managing access
permissions to your Amazon S3 resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - You must have the B<
C<s3express:CreateSession> > permission in the C<Action> element of a
policy. By default, the session is in the C<ReadWrite> mode. If you
want to restrict the access, you can explicitly set the
C<s3express:SessionMode> condition key to C<ReadOnly> on the bucket.

For more information about example bucket policies, see Example bucket
policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html)
and Amazon Web Services Identity and Access Management (IAM)
identity-based policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html)
in the I<Amazon S3 User Guide>.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

You must make requests for this API operation to the Zonal endpoint.
These endpoints support virtual-hosted-style requests in the format
C<https://I<bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.
Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back



=head2 HeadObject

=over

=item Bucket => Str

=item Key => Str

=item [ChecksumMode => Str]

=item [ExpectedBucketOwner => Str]

=item [IfMatch => Str]

=item [IfModifiedSince => Str]

=item [IfNoneMatch => Str]

=item [IfUnmodifiedSince => Str]

=item [PartNumber => Int]

=item [Range => Str]

=item [RequestPayer => Str]

=item [ResponseCacheControl => Str]

=item [ResponseContentDisposition => Str]

=item [ResponseContentEncoding => Str]

=item [ResponseContentLanguage => Str]

=item [ResponseContentType => Str]

=item [ResponseExpires => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::HeadObject>

Returns: a L<Paws::S3::HeadObjectOutput> instance

The C<HEAD> operation retrieves metadata from an object without
returning the object itself. This operation is useful if you're
interested only in an object's metadata.

A C<HEAD> request has the same options as a C<GET> operation on an
object. The response is identical to the C<GET> response except that
there is no response body. Because of this, if the C<HEAD> request
generates an error, it returns a generic code, such as C<400 Bad
Request>, C<403 Forbidden>, C<404 Not Found>, C<405 Method Not
Allowed>, C<412 Precondition Failed>, or C<304 Not Modified>. It's not
possible to retrieve the exact exception of these error codes.

Request headers are limited to 8 KB in size. For more information, see
Common Request Headers
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html).

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - To use C<HEAD>, you must have
the C<s3:GetObject> permission. You need the relevant read object (or
version) permission for this operation. For more information, see
Actions, resources, and condition keys for Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html) in
the I<Amazon S3 User Guide>. For more information about the permissions
to S3 API operations by S3 resource types, see Required permissions for
Amazon S3 API operations in the I<Amazon S3 User Guide>.

If the object you request doesn't exist, the error that Amazon S3
returns depends on whether you also have the C<s3:ListBucket>
permission.

=over

=item *

If you have the C<s3:ListBucket> permission on the bucket, Amazon S3
returns an HTTP status code C<404 Not Found> error.

=item *

If you donE<rsquo>t have the C<s3:ListBucket> permission, Amazon S3
returns an HTTP status code C<403 Forbidden> error.

=back

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

If you enable C<x-amz-checksum-mode> in the request and the object is
encrypted with Amazon Web Services Key Management Service (Amazon Web
Services KMS), you must also have the C<kms:GenerateDataKey> and
C<kms:Decrypt> permissions in IAM identity-based policies and KMS key
policies for the KMS key to retrieve the checksum of the object.

=back

=item Encryption

Encryption request headers, like C<x-amz-server-side-encryption>,
should not be sent for C<HEAD> requests if your object uses server-side
encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer
server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or
server-side encryption with Amazon S3 managed encryption keys (SSE-S3).
The C<x-amz-server-side-encryption> header is used when you C<PUT> an
object to S3 and want to specify the encryption method. If you include
this header in a C<HEAD> request for an object that uses these types of
keys, youE<rsquo>ll get an HTTP C<400 Bad Request> error. It's because
the encryption method can't be changed when you retrieve the object.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you retrieve the metadata from the object, you
must use the following headers to provide the encryption key for the
server to be able to retrieve the object's metadata. The headers are:

=over

=item *

C<x-amz-server-side-encryption-customer-algorithm>

=item *

C<x-amz-server-side-encryption-customer-key>

=item *

C<x-amz-server-side-encryption-customer-key-MD5>

=back

For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

B<Directory bucket > - For directory buckets, there are only two
supported options for server-side encryption: SSE-S3 and SSE-KMS. SSE-C
isn't supported. For more information, see Protecting data with
server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>.

=item Versioning

=over

=item *

If the current version of the object is a delete marker, Amazon S3
behaves as if the object was deleted and includes
C<x-amz-delete-marker: true> in the response.

=item *

If the specified version is a delete marker, the response returns a
C<405 Method Not Allowed> error and the C<Last-Modified: timestamp>
response header.

=back

=over

=item *

B<Directory buckets> - Delete marker is not supported for directory
buckets.

=item *

B<Directory buckets> - S3 Versioning isn't enabled and supported for
directory buckets. For this API operation, only the C<null> value of
the version ID is supported by directory buckets. You can only specify
C<null> to the C<versionId> query parameter in the request.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

For directory buckets, you must make requests for this API operation to
the Zonal endpoint. These endpoints support virtual-hosted-style
requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

The following actions are related to C<HeadObject>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=back



=head2 ListBucketAnalyticsConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketAnalyticsConfigurations>

Returns: a L<Paws::S3::ListBucketAnalyticsConfigurationsOutput> instance

This operation is not supported for directory buckets.

Lists the analytics configurations for the bucket. You can have up to
1,000 analytics configurations per bucket.

This action supports list pagination and does not return more than 100
configurations at a time. You should always check the C<IsTruncated>
element in the response. If there are no more configurations to list,
C<IsTruncated> is set to false. If there are more configurations to
list, C<IsTruncated> is set to true, and there will be a value in
C<NextContinuationToken>. You use the C<NextContinuationToken> value to
continue the pagination of the list by passing the value in
continuation-token in the request to C<GET> the next page.

To use this operation, you must have permissions to perform the
C<s3:GetAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about Amazon S3 analytics feature, see Amazon S3
Analytics E<ndash> Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

The following operations are related to
C<ListBucketAnalyticsConfigurations>:

=over

=item *

GetBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)

=item *

DeleteBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)

=item *

PutBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)

=back



=head2 ListBucketIntelligentTieringConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketIntelligentTieringConfigurations>

Returns: a L<Paws::S3::ListBucketIntelligentTieringConfigurationsOutput> instance

This operation is not supported for directory buckets.

Lists the S3 Intelligent-Tiering configuration from the specified
bucket.

The S3 Intelligent-Tiering storage class is designed to optimize
storage costs by automatically moving data to the most cost-effective
storage access tier, without performance impact or operational
overhead. S3 Intelligent-Tiering delivers automatic cost savings in
three low latency and high throughput access tiers. To get the lowest
storage cost on data that can be accessed in minutes to hours, you can
choose to activate additional archiving capabilities.

The S3 Intelligent-Tiering storage class is the ideal storage class for
data with unknown, changing, or unpredictable access patterns,
independent of object size or retention period. If the size of an
object is less than 128 KB, it is not monitored and not eligible for
auto-tiering. Smaller objects can be stored, but they are always
charged at the Frequent Access tier rates in the S3 Intelligent-Tiering
storage class.

For more information, see Storage class for automatically optimizing
frequently and infrequently accessed objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

Operations related to C<ListBucketIntelligentTieringConfigurations>
include:

=over

=item *

DeleteBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html)

=item *

PutBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html)

=item *

GetBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html)

=back



=head2 ListBucketInventoryConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketInventoryConfigurations>

Returns: a L<Paws::S3::ListBucketInventoryConfigurationsOutput> instance

This operation is not supported for directory buckets.

Returns a list of inventory configurations for the bucket. You can have
up to 1,000 analytics configurations per bucket.

This action supports list pagination and does not return more than 100
configurations at a time. Always check the C<IsTruncated> element in
the response. If there are no more configurations to list,
C<IsTruncated> is set to false. If there are more configurations to
list, C<IsTruncated> is set to true, and there is a value in
C<NextContinuationToken>. You use the C<NextContinuationToken> value to
continue the pagination of the list by passing the value in
continuation-token in the request to C<GET> the next page.

To use this operation, you must have permissions to perform the
C<s3:GetInventoryConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about the Amazon S3 inventory feature, see Amazon S3
Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html)

The following operations are related to
C<ListBucketInventoryConfigurations>:

=over

=item *

GetBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html)

=item *

DeleteBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html)

=item *

PutBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html)

=back



=head2 ListBucketMetricsConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketMetricsConfigurations>

Returns: a L<Paws::S3::ListBucketMetricsConfigurationsOutput> instance

This operation is not supported for directory buckets.

Lists the metrics configurations for the bucket. The metrics
configurations are only for the request metrics of the bucket and do
not provide information on daily storage metrics. You can have up to
1,000 configurations per bucket.

This action supports list pagination and does not return more than 100
configurations at a time. Always check the C<IsTruncated> element in
the response. If there are no more configurations to list,
C<IsTruncated> is set to false. If there are more configurations to
list, C<IsTruncated> is set to true, and there is a value in
C<NextContinuationToken>. You use the C<NextContinuationToken> value to
continue the pagination of the list by passing the value in
C<continuation-token> in the request to C<GET> the next page.

To use this operation, you must have permissions to perform the
C<s3:GetMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For more information about metrics configurations and CloudWatch
request metrics, see Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<ListBucketMetricsConfigurations>:

=over

=item *

PutBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html)

=item *

GetBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html)

=item *

DeleteBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html)

=back



=head2 ListBuckets

=over

=item [BucketRegion => Str]

=item [ContinuationToken => Str]

=item [MaxBuckets => Int]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBuckets>

Returns: a L<Paws::S3::ListBucketsOutput> instance

This operation is not supported for directory buckets.

Returns a list of all buckets owned by the authenticated sender of the
request. To grant IAM permission to use this operation, you must add
the C<s3:ListAllMyBuckets> policy action.

For information about Amazon S3 buckets, see Creating, configuring, and
working with Amazon S3 buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html).

We strongly recommend using only paginated C<ListBuckets> requests.
Unpaginated C<ListBuckets> requests are only supported for Amazon Web
Services accounts set to the default general purpose bucket quota of
10,000. If you have an approved general purpose bucket quota above
10,000, you must send paginated C<ListBuckets> requests to list your
accountE<rsquo>s buckets. All unpaginated C<ListBuckets> requests will
be rejected for Amazon Web Services accounts with a general purpose
bucket quota greater than 10,000.


=head2 ListDirectoryBuckets

=over

=item [ContinuationToken => Str]

=item [MaxDirectoryBuckets => Int]


=back

Each argument is described in detail in: L<Paws::S3::ListDirectoryBuckets>

Returns: a L<Paws::S3::ListDirectoryBucketsOutput> instance

Returns a list of all Amazon S3 directory buckets owned by the
authenticated sender of the request. For more information about
directory buckets, see Directory buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

You must have the C<s3express:ListAllMyDirectoryBuckets> permission in
an IAM identity-based policy instead of a bucket policy. Cross-account
access to this API operation isn't supported. This operation can only
be performed by the Amazon Web Services account that owns the resource.
For more information about directory bucket policies and permissions,
see Amazon Web Services Identity and Access Management (IAM) for S3
Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region>.amazonaws.com>.

=back

The C<BucketRegion> response element is not part of the
C<ListDirectoryBuckets> Response Syntax.


=head2 ListMultipartUploads

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [ExpectedBucketOwner => Str]

=item [KeyMarker => Str]

=item [MaxUploads => Int]

=item [Prefix => Str]

=item [RequestPayer => Str]

=item [UploadIdMarker => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListMultipartUploads>

Returns: a L<Paws::S3::ListMultipartUploadsOutput> instance

This operation lists in-progress multipart uploads in a bucket. An
in-progress multipart upload is a multipart upload that has been
initiated by the C<CreateMultipartUpload> request, but has not yet been
completed or aborted.

B<Directory buckets> - If multipart uploads in a directory bucket are
in progress, you can't delete the bucket until all the in-progress
multipart uploads are aborted or completed. To delete these in-progress
multipart uploads, use the C<ListMultipartUploads> operation to list
the in-progress multipart uploads in the bucket and use the
C<AbortMultipartUpload> operation to abort all the in-progress
multipart uploads.

The C<ListMultipartUploads> operation returns a maximum of 1,000
multipart uploads in the response. The limit of 1,000 multipart uploads
is also the default value. You can further limit the number of uploads
in a response by specifying the C<max-uploads> request parameter. If
there are more than 1,000 multipart uploads that satisfy your
C<ListMultipartUploads> request, the response returns an C<IsTruncated>
element with the value of C<true>, a C<NextKeyMarker> element, and a
C<NextUploadIdMarker> element. To list the remaining multipart uploads,
you need to make subsequent C<ListMultipartUploads> requests. In these
requests, include two query parameters: C<key-marker> and
C<upload-id-marker>. Set the value of C<key-marker> to the
C<NextKeyMarker> value from the previous response. Similarly, set the
value of C<upload-id-marker> to the C<NextUploadIdMarker> value from
the previous response.

B<Directory buckets> - The C<upload-id-marker> element and the
C<NextUploadIdMarker> element aren't supported by directory buckets. To
list the additional multipart uploads, you only need to set the value
of C<key-marker> to the C<NextKeyMarker> value from the previous
response.

For more information about multipart uploads, see Uploading Objects
Using Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - For information about
permissions required to use the multipart upload API, see Multipart
Upload and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item Sorting of multipart uploads in response

=over

=item *

B<General purpose bucket> - In the C<ListMultipartUploads> response,
the multipart uploads are sorted based on two criteria:

=over

=item *

Key-based sorting - Multipart uploads are initially sorted in ascending
order based on their object keys.

=item *

Time-based sorting - For uploads that share the same object key, they
are further sorted in ascending order based on the upload initiation
time. Among uploads with the same key, the one that was initiated first
will appear before the ones that were initiated later.

=back

=item *

B<Directory bucket> - In the C<ListMultipartUploads> response, the
multipart uploads aren't sorted lexicographically based on the object
keys.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<ListMultipartUploads>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=back



=head2 ListObjects

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [ExpectedBucketOwner => Str]

=item [Marker => Str]

=item [MaxKeys => Int]

=item [OptionalObjectAttributes => ArrayRef[Str|Undef]]

=item [Prefix => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjects>

Returns: a L<Paws::S3::ListObjectsOutput> instance

This operation is not supported for directory buckets.

Returns some or all (up to 1,000) of the objects in a bucket. You can
use the request parameters as selection criteria to return a subset of
the objects in a bucket. A 200 OK response can contain valid or invalid
XML. Be sure to design your application to parse the contents of the
response and handle it appropriately.

This action has been revised. We recommend that you use the newer
version, ListObjectsV2
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html),
when developing applications. For backward compatibility, Amazon S3
continues to support C<ListObjects>.

The following operations are related to C<ListObjects>:

=over

=item *

ListObjectsV2
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

ListBuckets
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)

=back



=head2 ListObjectsV2

=over

=item Bucket => Str

=item [ContinuationToken => Str]

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [ExpectedBucketOwner => Str]

=item [FetchOwner => Bool]

=item [MaxKeys => Int]

=item [OptionalObjectAttributes => ArrayRef[Str|Undef]]

=item [Prefix => Str]

=item [RequestPayer => Str]

=item [StartAfter => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjectsV2>

Returns: a L<Paws::S3::ListObjectsV2Output> instance

Returns some or all (up to 1,000) of the objects in a bucket with each
request. You can use the request parameters as selection criteria to
return a subset of the objects in a bucket. A C<200 OK> response can
contain valid or invalid XML. Make sure to design your application to
parse the contents of the response and handle it appropriately. For
more information about listing objects, see Listing object keys
programmatically
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html)
in the I<Amazon S3 User Guide>. To get a list of your buckets, see
ListBuckets
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html).

=over

=item *

B<General purpose bucket> - For general purpose buckets,
C<ListObjectsV2> doesn't return prefixes that are related only to
in-progress multipart uploads.

=item *

B<Directory buckets> - For directory buckets, C<ListObjectsV2> response
includes the prefixes that are related only to in-progress multipart
uploads.

=item *

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - To use this operation, you must
have READ access to the bucket. You must have permission to perform the
C<s3:ListBucket> action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item Sorting order of returned objects

=over

=item *

B<General purpose bucket> - For general purpose buckets,
C<ListObjectsV2> returns objects in lexicographical order based on
their key names.

=item *

B<Directory bucket> - For directory buckets, C<ListObjectsV2> does not
return objects in lexicographical order.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

This section describes the latest revision of this action. We recommend
that you use this revised API operation for application development.
For backward compatibility, Amazon S3 continues to support the prior
version of this API operation, ListObjects
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html).

The following operations are related to C<ListObjectsV2>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=back



=head2 ListObjectVersions

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [ExpectedBucketOwner => Str]

=item [KeyMarker => Str]

=item [MaxKeys => Int]

=item [OptionalObjectAttributes => ArrayRef[Str|Undef]]

=item [Prefix => Str]

=item [RequestPayer => Str]

=item [VersionIdMarker => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjectVersions>

Returns: a L<Paws::S3::ListObjectVersionsOutput> instance

This operation is not supported for directory buckets.

Returns metadata about all versions of the objects in a bucket. You can
also use request parameters as selection criteria to return metadata
about a subset of all the object versions.

To use this operation, you must have permission to perform the
C<s3:ListBucketVersions> action. Be aware of the name difference.

A C<200 OK> response can contain valid or invalid XML. Make sure to
design your application to parse the contents of the response and
handle it appropriately.

To use this operation, you must have READ access to the bucket.

The following operations are related to C<ListObjectVersions>:

=over

=item *

ListObjectsV2
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=back



=head2 ListParts

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [ExpectedBucketOwner => Str]

=item [MaxParts => Int]

=item [PartNumberMarker => Int]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListParts>

Returns: a L<Paws::S3::ListPartsOutput> instance

Lists the parts that have been uploaded for a specific multipart
upload.

To use this operation, you must provide the C<upload ID> in the
request. You obtain this uploadID by sending the initiate multipart
upload request through CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).

The C<ListParts> request returns a maximum of 1,000 uploaded parts. The
limit of 1,000 parts is also the default value. You can restrict the
number of parts in a response by specifying the C<max-parts> request
parameter. If your multipart upload consists of more than 1,000 parts,
the response returns an C<IsTruncated> field with the value of C<true>,
and a C<NextPartNumberMarker> element. To list remaining uploaded
parts, in subsequent C<ListParts> requests, include the
C<part-number-marker> query string parameter and set its value to the
C<NextPartNumberMarker> field value from the previous response.

For more information on multipart uploads, see Uploading Objects Using
Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - For information about
permissions required to use the multipart upload API, see Multipart
Upload and Permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
in the I<Amazon S3 User Guide>.

If the upload was created using server-side encryption with Key
Management Service (KMS) keys (SSE-KMS) or dual-layer server-side
encryption with Amazon Web Services KMS keys (DSSE-KMS), you must have
permission to the C<kms:Decrypt> action for the C<ListParts> request to
succeed.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<ListParts>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=item *

GetObjectAttributes
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

=item *

ListMultipartUploads
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)

=back



=head2 PutBucketAccelerateConfiguration

=over

=item AccelerateConfiguration => L<Paws::S3::AccelerateConfiguration>

=item Bucket => Str

=item [ChecksumAlgorithm => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAccelerateConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Sets the accelerate configuration of an existing bucket. Amazon S3
Transfer Acceleration is a bucket-level feature that enables you to
perform faster data transfers to Amazon S3.

To use this operation, you must have permission to perform the
C<s3:PutAccelerateConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

The Transfer Acceleration state of a bucket can be set to one of the
following two values:

=over

=item *

Enabled E<ndash> Enables accelerated data transfers to the bucket.

=item *

Suspended E<ndash> Disables accelerated data transfers to the bucket.

=back

The GetBucketAccelerateConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAccelerateConfiguration.html)
action returns the transfer acceleration state of a bucket.

After setting the Transfer Acceleration state of a bucket to Enabled,
it might take up to thirty minutes before the data transfer rates to
the bucket increase.

The name of the bucket used for Transfer Acceleration must be
DNS-compliant and must not contain periods (".").

For more information about transfer acceleration, see Transfer
Acceleration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).

The following operations are related to
C<PutBucketAccelerateConfiguration>:

=over

=item *

GetBucketAccelerateConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAccelerateConfiguration.html)

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=back



=head2 PutBucketAcl

=over

=item Bucket => Str

=item [AccessControlPolicy => L<Paws::S3::AccessControlPolicy>]

=item [ACL => Str]

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAcl>

Returns: nothing

This operation is not supported for directory buckets.

Sets the permissions on an existing bucket using access control lists
(ACL). For more information, see Using ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
To set the ACL of a bucket, you must have the C<WRITE_ACP> permission.

You can use one of the following two ways to set a bucket's
permissions:

=over

=item *

Specify the ACL in the request body

=item *

Specify permissions using request headers

=back

You cannot specify access permission using both the body and the
request headers.

Depending on your application needs, you may choose to set the ACL on a
bucket using either the request body or the headers. For example, if
you have an existing application that updates a bucket ACL using the
request body, then you can continue to use that approach.

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, ACLs are disabled and no longer affect permissions. You must
use policies to grant access to your bucket and the objects in it.
Requests to set ACLs or update ACLs fail and return the
C<AccessControlListNotSupported> error code. Requests to read ACLs are
still supported. For more information, see Controlling object ownership
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

You can set access permissions by using one of the following methods:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. Amazon S3
supports a set of predefined ACLs, known as I<canned ACLs>. Each canned
ACL has a predefined set of grantees and permissions. Specify the
canned ACL name as the value of C<x-amz-acl>. If you use this header,
you cannot use other access control-specific headers in your request.
For more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. When using these headers, you
specify explicit access permissions and grantees (Amazon Web Services
accounts or Amazon S3 groups) who will receive the permission. If you
use these ACL-specific headers, you cannot use the C<x-amz-acl> header
to set a canned ACL. These parameters map to the set of permissions
that Amazon S3 supports in an ACL. For more information, see Access
Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

C<id> E<ndash> if the value specified is the canonical user ID of an
Amazon Web Services account

=item *

C<uri> E<ndash> if you are granting permissions to a predefined group

=item *

C<emailAddress> E<ndash> if the value specified is the email address of
an Amazon Web Services account

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

For example, the following C<x-amz-grant-write> header grants create,
overwrite, and delete objects permission to LogDelivery group
predefined by Amazon S3 and two Amazon Web Services accounts identified
by their email addresses.

C<x-amz-grant-write:
uri="http://acs.amazonaws.com/groups/s3/LogDelivery",
id="111122223333", id="555566667777">

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

=item Grantee Values

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

=over

=item *

By the person's ID:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="CanonicalUser"E<gt>E<lt>IDE<gt>E<lt>E<gt>IDE<lt>E<gt>E<lt>/IDE<gt>E<lt>DisplayNameE<gt>E<lt>E<gt>GranteesEmailE<lt>E<gt>E<lt>/DisplayNameE<gt>
E<lt>/GranteeE<gt>>

DisplayName is optional and ignored in the request

=item *

By URI:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="Group"E<gt>E<lt>URIE<gt>E<lt>E<gt>http://acs.amazonaws.com/groups/global/AuthenticatedUsersE<lt>E<gt>E<lt>/URIE<gt>E<lt>/GranteeE<gt>>

=item *

By Email address:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="AmazonCustomerByEmail"E<gt>E<lt>EmailAddressE<gt>E<lt>E<gt>Grantees@email.comE<lt>E<gt>E<lt>/EmailAddressE<gt>&E<lt>/GranteeE<gt>>

The grantee is resolved to the CanonicalUser and, in a response to a
GET Object acl request, appears as the CanonicalUser.

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

=back

The following operations are related to C<PutBucketAcl>:

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

=item *

GetObjectAcl
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)

=back



=head2 PutBucketAnalyticsConfiguration

=over

=item AnalyticsConfiguration => L<Paws::S3::AnalyticsConfiguration>

=item Bucket => Str

=item Id => Str

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAnalyticsConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Sets an analytics configuration for the bucket (specified by the
analytics configuration ID). You can have up to 1,000 analytics
configurations per bucket.

You can choose to have storage class analysis export analysis reports
sent to a comma-separated values (CSV) flat file. See the C<DataExport>
request element. Reports are updated daily and are based on the object
filters that you configure. When selecting data export, you specify a
destination bucket and an optional destination prefix where the file is
written. You can export the data to a destination bucket in a different
account. However, the destination bucket must be in the same Region as
the bucket that you are making the PUT analytics configuration to. For
more information, see Amazon S3 Analytics E<ndash> Storage Class
Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

You must create a bucket policy on the destination bucket where the
exported file is written to grant permissions to Amazon S3 to write
objects to the bucket. For an example policy, see Granting Permissions
for Amazon S3 Inventory and Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9).

To use this operation, you must have permissions to perform the
C<s3:PutAnalyticsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

C<PutBucketAnalyticsConfiguration> has the following special errors:

=over

=item *

=over

=item *

I<HTTP Error: HTTP 400 Bad Request>

=item *

I<Code: InvalidArgument>

=item *

I<Cause: Invalid argument.>

=back

=item *

=over

=item *

I<HTTP Error: HTTP 400 Bad Request>

=item *

I<Code: TooManyConfigurations>

=item *

I<Cause: You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.>

=back

=item *

=over

=item *

I<HTTP Error: HTTP 403 Forbidden>

=item *

I<Code: AccessDenied>

=item *

I<Cause: You are not the owner of the specified bucket, or you do not
have the s3:PutAnalyticsConfiguration bucket permission to set the
configuration on the bucket.>

=back

=back

The following operations are related to
C<PutBucketAnalyticsConfiguration>:

=over

=item *

GetBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)

=item *

DeleteBucketAnalyticsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)

=item *

ListBucketAnalyticsConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html)

=back



=head2 PutBucketCors

=over

=item Bucket => Str

=item CORSConfiguration => L<Paws::S3::CORSConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketCors>

Returns: nothing

This operation is not supported for directory buckets.

Sets the C<cors> configuration for your bucket. If the configuration
exists, Amazon S3 replaces it.

To use this operation, you must be allowed to perform the
C<s3:PutBucketCORS> action. By default, the bucket owner has this
permission and can grant it to others.

You set this configuration on a bucket so that the bucket can service
cross-origin requests. For example, you might want to enable a request
whose origin is C<http://www.example.com> to access your Amazon S3
bucket at C<my.example.bucket.com> by using the browser's
C<XMLHttpRequest> capability.

To enable cross-origin resource sharing (CORS) on a bucket, you add the
C<cors> subresource to the bucket. The C<cors> subresource is an XML
document in which you configure rules that identify origins and the
HTTP methods that can be executed on your bucket. The document is
limited to 64 KB in size.

When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS
request) against a bucket, it evaluates the C<cors> configuration on
the bucket and uses the first C<CORSRule> rule that matches the
incoming browser request to enable a cross-origin request. For a rule
to match, the following conditions must be met:

=over

=item *

The request's C<Origin> header must match C<AllowedOrigin> elements.

=item *

The request method (for example, GET, PUT, HEAD, and so on) or the
C<Access-Control-Request-Method> header in case of a pre-flight
C<OPTIONS> request must be one of the C<AllowedMethod> elements.

=item *

Every header specified in the C<Access-Control-Request-Headers> request
header of a pre-flight request must match an C<AllowedHeader> element.

=back

For more information about CORS, go to Enabling Cross-Origin Resource
Sharing (https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in
the I<Amazon S3 User Guide>.

The following operations are related to C<PutBucketCors>:

=over

=item *

GetBucketCors
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketCors.html)

=item *

DeleteBucketCors
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketCors.html)

=item *

RESTOPTIONSobject
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)

=back



=head2 PutBucketEncryption

=over

=item Bucket => Str

=item ServerSideEncryptionConfiguration => L<Paws::S3::ServerSideEncryptionConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketEncryption>

Returns: nothing

This operation configures default encryption and Amazon S3 Bucket Keys
for an existing bucket.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

By default, all buckets have a default encryption configuration that
uses server-side encryption with Amazon S3 managed keys (SSE-S3).

=over

=item *

B<General purpose buckets>

=over

=item *

You can optionally configure default encryption for a bucket by using
server-side encryption with Key Management Service (KMS) keys (SSE-KMS)
or dual-layer server-side encryption with Amazon Web Services KMS keys
(DSSE-KMS). If you specify default encryption by using SSE-KMS, you can
also configure Amazon S3 Bucket Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html). For
information about the bucket default encryption feature, see Amazon S3
Bucket Default Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
in the I<Amazon S3 User Guide>.

=item *

If you use PutBucketEncryption to set your default bucket encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
to SSE-KMS, you should verify that your KMS key ID is correct. Amazon
S3 doesn't validate the KMS key ID provided in PutBucketEncryption
requests.

=back

=item *

B<Directory buckets > - You can optionally configure default encryption
for a bucket by using server-side encryption with Key Management
Service (KMS) keys (SSE-KMS).

=over

=item *

We recommend that the bucket's default encryption uses the desired
encryption configuration and you don't override the bucket default
encryption in your C<CreateSession> requests or C<PUT> object requests.
Then, new objects are automatically encrypted with the desired
encryption settings. For more information about the encryption
overriding behaviors in directory buckets, see Specifying server-side
encryption with KMS for new object uploads
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).

=item *

Your SSE-KMS configuration can only support 1 customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
per directory bucket's lifetime. The Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
(C<aws/s3>) isn't supported.

=item *

S3 Bucket Keys are always enabled for C<GET> and C<PUT> operations in a
directory bucket and canE<rsquo>t be disabled. S3 Bucket Keys aren't
supported, when you copy SSE-KMS encrypted objects from general purpose
buckets to directory buckets, from directory buckets to general purpose
buckets, or between directory buckets, through CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html),
UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html),
the Copy operation in Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops),
or the import jobs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job).
In this case, Amazon S3 makes a call to KMS every time a copy request
is made for a KMS-encrypted object.

=item *

When you specify an KMS customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
for encryption in your directory bucket, only use the key ID or key
ARN. The key alias format of the KMS key isn't supported.

=item *

For directory buckets, if you use PutBucketEncryption to set your
default bucket encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
to SSE-KMS, Amazon S3 validates the KMS key ID provided in
PutBucketEncryption requests.

=back

=back

If you're specifying a customer managed KMS key, we recommend using a
fully qualified KMS key ARN. If you use a KMS key alias instead, then
KMS resolves the key within the requesterE<rsquo>s account. This
behavior can result in data that's encrypted with a KMS key that
belongs to the requester, and not the bucket owner.

Also, this action requires Amazon Web Services Signature Version 4. For
more information, see Authenticating Requests (Amazon Web Services
Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - The
C<s3:PutEncryptionConfiguration> permission is required in a policy.
The bucket owner has this permission by default. The bucket owner can
grant this permission to others. For more information about
permissions, see Permissions Related to Bucket Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API
operation, you must have the C<s3express:PutEncryptionConfiguration>
permission in an IAM identity-based policy instead of a bucket policy.
Cross-account access to this API operation isn't supported. This
operation can only be performed by the Amazon Web Services account that
owns the resource. For more information about directory bucket policies
and permissions, see Amazon Web Services Identity and Access Management
(IAM) for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

To set a directory bucket default encryption with SSE-KMS, you must
also have the C<kms:GenerateDataKey> and the C<kms:Decrypt> permissions
in IAM identity-based policies and KMS key policies for the target KMS
key.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<PutBucketEncryption>:

=over

=item *

GetBucketEncryption
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html)

=item *

DeleteBucketEncryption
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html)

=back



=head2 PutBucketIntelligentTieringConfiguration

=over

=item Bucket => Str

=item Id => Str

=item IntelligentTieringConfiguration => L<Paws::S3::IntelligentTieringConfiguration>


=back

Each argument is described in detail in: L<Paws::S3::PutBucketIntelligentTieringConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Puts a S3 Intelligent-Tiering configuration to the specified bucket.
You can have up to 1,000 S3 Intelligent-Tiering configurations per
bucket.

The S3 Intelligent-Tiering storage class is designed to optimize
storage costs by automatically moving data to the most cost-effective
storage access tier, without performance impact or operational
overhead. S3 Intelligent-Tiering delivers automatic cost savings in
three low latency and high throughput access tiers. To get the lowest
storage cost on data that can be accessed in minutes to hours, you can
choose to activate additional archiving capabilities.

The S3 Intelligent-Tiering storage class is the ideal storage class for
data with unknown, changing, or unpredictable access patterns,
independent of object size or retention period. If the size of an
object is less than 128 KB, it is not monitored and not eligible for
auto-tiering. Smaller objects can be stored, but they are always
charged at the Frequent Access tier rates in the S3 Intelligent-Tiering
storage class.

For more information, see Storage class for automatically optimizing
frequently and infrequently accessed objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

Operations related to C<PutBucketIntelligentTieringConfiguration>
include:

=over

=item *

DeleteBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html)

=item *

GetBucketIntelligentTieringConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html)

=item *

ListBucketIntelligentTieringConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html)

=back

You only need S3 Intelligent-Tiering enabled on a bucket if you want to
automatically move objects stored in the S3 Intelligent-Tiering storage
class to the Archive Access or Deep Archive Access tier.

C<PutBucketIntelligentTieringConfiguration> has the following special
errors:

=over

=item HTTP 400 Bad Request Error

I<Code:> InvalidArgument

I<Cause:> Invalid Argument

=item HTTP 400 Bad Request Error

I<Code:> TooManyConfigurations

I<Cause:> You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

=item HTTP 403 Forbidden Error

I<Cause:> You are not the owner of the specified bucket, or you do not
have the C<s3:PutIntelligentTieringConfiguration> bucket permission to
set the configuration on the bucket.

=back



=head2 PutBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str

=item InventoryConfiguration => L<Paws::S3::InventoryConfiguration>

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketInventoryConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

This implementation of the C<PUT> action adds an inventory
configuration (identified by the inventory ID) to the bucket. You can
have up to 1,000 inventory configurations per bucket.

Amazon S3 inventory generates inventories of the objects in the bucket
on a daily or weekly basis, and the results are published to a flat
file. The bucket that is inventoried is called the I<source> bucket,
and the bucket where the inventory flat file is stored is called the
I<destination> bucket. The I<destination> bucket must be in the same
Amazon Web Services Region as the I<source> bucket.

When you configure an inventory for a I<source> bucket, you specify the
I<destination> bucket where you want the inventory to be stored, and
whether to generate the inventory daily or weekly. You can also
configure what object metadata to include and whether to inventory all
object versions or only current versions. For more information, see
Amazon S3 Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html)
in the Amazon S3 User Guide.

You must create a bucket policy on the I<destination> bucket to grant
permissions to Amazon S3 to write objects to the bucket in the defined
location. For an example policy, see Granting Permissions for Amazon S3
Inventory and Storage Class Analysis
(https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9).

=over

=item Permissions

To use this operation, you must have permission to perform the
C<s3:PutInventoryConfiguration> action. The bucket owner has this
permission by default and can grant this permission to others.

The C<s3:PutInventoryConfiguration> permission allows a user to create
an S3 Inventory
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html)
report that includes all object metadata fields available and to
specify the destination bucket to store the inventory. A user with read
access to objects in the destination bucket can also access all object
metadata fields that are available in the inventory report.

To restrict access to an inventory report, see Restricting access to an
Amazon S3 Inventory report
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-10)
in the I<Amazon S3 User Guide>. For more information about the metadata
fields available in S3 Inventory, see Amazon S3 Inventory lists
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html#storage-inventory-contents)
in the I<Amazon S3 User Guide>. For more information about permissions,
see Permissions related to bucket subresource operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Identity and access management in Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

=back

C<PutBucketInventoryConfiguration> has the following special errors:

=over

=item HTTP 400 Bad Request Error

I<Code:> InvalidArgument

I<Cause:> Invalid Argument

=item HTTP 400 Bad Request Error

I<Code:> TooManyConfigurations

I<Cause:> You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

=item HTTP 403 Forbidden Error

I<Cause:> You are not the owner of the specified bucket, or you do not
have the C<s3:PutInventoryConfiguration> bucket permission to set the
configuration on the bucket.

=back

The following operations are related to
C<PutBucketInventoryConfiguration>:

=over

=item *

GetBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html)

=item *

DeleteBucketInventoryConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html)

=item *

ListBucketInventoryConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html)

=back



=head2 PutBucketLifecycle

=over

=item Bucket => Str

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [LifecycleConfiguration => L<Paws::S3::LifecycleConfiguration>]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLifecycle>

Returns: nothing

This operation is not supported for directory buckets.

For an updated version of this API, see PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html).
This version has been deprecated. Existing lifecycle configurations
will work. For new lifecycle configurations, use the updated API.

This operation is not supported for directory buckets.

Creates a new lifecycle configuration for the bucket or replaces an
existing lifecycle configuration. For information about lifecycle
configuration, see Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
in the I<Amazon S3 User Guide>.

By default, all Amazon S3 resources, including buckets, objects, and
related subresources (for example, lifecycle configuration and website
configuration) are private. Only the resource owner, the Amazon Web
Services account that created the resource, can access it. The resource
owner can optionally grant access permissions to others by writing an
access policy. For this operation, users must get the
C<s3:PutLifecycleConfiguration> permission.

You can also explicitly deny permissions. Explicit denial also
supersedes any other permissions. If you want to prevent users or
accounts from removing or deleting objects from your bucket, you must
deny them permissions for the following actions:

=over

=item *

C<s3:DeleteObject>

=item *

C<s3:DeleteObjectVersion>

=item *

C<s3:PutLifecycleConfiguration>

=back

For more information about permissions, see Managing Access Permissions
to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

For more examples of transitioning objects to storage classes such as
STANDARD_IA or ONEZONE_IA, see Examples of Lifecycle Configuration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#lifecycle-configuration-examples).

The following operations are related to C<PutBucketLifecycle>:

=over

=item *

GetBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html)(Deprecated)

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

=item *

RestoreObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html)

=item *

By default, a resource ownerE<mdash>in this case, a bucket owner, which
is the Amazon Web Services account that created the bucketE<mdash>can
perform any of the operations. A resource owner can also grant others
permission to perform the operation. For more information, see the
following topics in the Amazon S3 User Guide:

=over

=item *

Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)

=item *

Managing Access Permissions to your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)

=back

=back



=head2 PutBucketLifecycleConfiguration

=over

=item Bucket => Str

=item [ChecksumAlgorithm => Str]

=item [ExpectedBucketOwner => Str]

=item [LifecycleConfiguration => L<Paws::S3::BucketLifecycleConfiguration>]

=item [TransitionDefaultMinimumObjectSize => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLifecycleConfiguration>

Returns: a L<Paws::S3::PutBucketLifecycleConfigurationOutput> instance

Creates a new lifecycle configuration for the bucket or replaces an
existing lifecycle configuration. Keep in mind that this will overwrite
an existing lifecycle configuration, so if you want to retain any
configuration details, they must be included in the new lifecycle
configuration. For information about lifecycle configuration, see
Managing your storage lifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).

Bucket lifecycle configuration now supports specifying a lifecycle rule
using an object key name prefix, one or more object tags, object size,
or any combination of these. Accordingly, this section describes the
latest API. The previous version of the API supported filtering based
only on an object key name prefix, which is supported for backward
compatibility. For the related API description, see PutBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html).

=over

=item Rules

=item Permissions

=item HTTP Host header syntax

You specify the lifecycle configuration in your request body. The
lifecycle configuration is specified as XML consisting of one or more
rules. An Amazon S3 Lifecycle configuration can have up to 1,000 rules.
This limit is not adjustable.

Bucket lifecycle configuration supports specifying a lifecycle rule
using an object key name prefix, one or more object tags, object size,
or any combination of these. Accordingly, this section describes the
latest API. The previous version of the API supported filtering based
only on an object key name prefix, which is supported for backward
compatibility for general purpose buckets. For the related API
description, see PutBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html).

Lifecyle configurations for directory buckets only support expiring
objects and cancelling multipart uploads. Expiring of versioned
objects,transitions and tag filters are not supported.

A lifecycle rule consists of the following:

=over

=item *

A filter identifying a subset of objects to which the rule applies. The
filter can be based on a key name prefix, object tags, object size, or
any combination of these.

=item *

A status indicating whether the rule is in effect.

=item *

One or more lifecycle transition and expiration actions that you want
Amazon S3 to perform on the objects identified by the filter. If the
state of your bucket is versioning-enabled or versioning-suspended, you
can have many versions of the same object (one current version and zero
or more noncurrent versions). Amazon S3 provides predefined actions
that you can specify for current and noncurrent object versions.

=back

For more information, see Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
and Lifecycle Configuration Elements
(https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html).

=over

=item *

B<General purpose bucket permissions> - By default, all Amazon S3
resources are private, including buckets, objects, and related
subresources (for example, lifecycle configuration and website
configuration). Only the resource owner (that is, the Amazon Web
Services account that created it) can access the resource. The resource
owner can optionally grant access permissions to others by writing an
access policy. For this operation, a user must have the
C<s3:PutLifecycleConfiguration> permission.

You can also explicitly deny permissions. An explicit deny also
supersedes any other permissions. If you want to block users or
accounts from removing or deleting objects from your bucket, you must
deny them permissions for the following actions:

=over

=item *

C<s3:DeleteObject>

=item *

C<s3:DeleteObjectVersion>

=item *

C<s3:PutLifecycleConfiguration>

For more information about permissions, see Managing Access Permissions
to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

=back

=back

=over

=item *

B<Directory bucket permissions> - You must have the
C<s3express:PutLifecycleConfiguration> permission in an IAM
identity-based policy to use this operation. Cross-account access to
this API operation isn't supported. The resource owner can optionally
grant access permissions to others by creating a role or user for them
as long as they are within the same account as the owner and resource.

For more information about directory bucket policies and permissions,
see Authorizing Regional endpoint APIs with IAM
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region>.amazonaws.com>.

The following operations are related to
C<PutBucketLifecycleConfiguration>:

=over

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

=item *

DeleteBucketLifecycle
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)

=back

=back



=head2 PutBucketLogging

=over

=item Bucket => Str

=item BucketLoggingStatus => L<Paws::S3::BucketLoggingStatus>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLogging>

Returns: nothing

This operation is not supported for directory buckets.

Set the logging parameters for a bucket and to specify permissions for
who can view and modify the logging parameters. All logs are saved to
buckets in the same Amazon Web Services Region as the source bucket. To
set the logging status of a bucket, you must be the bucket owner.

The bucket owner is automatically granted FULL_CONTROL to all logs. You
use the C<Grantee> request element to grant access to other people. The
C<Permissions> request element specifies the kind of access the grantee
has to the logs.

If the target bucket for log delivery uses the bucket owner enforced
setting for S3 Object Ownership, you can't use the C<Grantee> request
element to grant access to others. Permissions can only be granted
using policies. For more information, see Permissions for server access
log delivery
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general)
in the I<Amazon S3 User Guide>.

=over

=item Grantee Values

You can specify the person (grantee) to whom you're assigning access
rights (by using request elements) in the following ways:

=over

=item *

By the person's ID:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="CanonicalUser"E<gt>E<lt>IDE<gt>E<lt>E<gt>IDE<lt>E<gt>E<lt>/IDE<gt>E<lt>DisplayNameE<gt>E<lt>E<gt>GranteesEmailE<lt>E<gt>E<lt>/DisplayNameE<gt>
E<lt>/GranteeE<gt>>

C<DisplayName> is optional and ignored in the request.

=item *

By Email address:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="AmazonCustomerByEmail"E<gt>E<lt>EmailAddressE<gt>E<lt>E<gt>Grantees@email.comE<lt>E<gt>E<lt>/EmailAddressE<gt>E<lt>/GranteeE<gt>>

The grantee is resolved to the C<CanonicalUser> and, in a response to a
C<GETObjectAcl> request, appears as the CanonicalUser.

=item *

By URI:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="Group"E<gt>E<lt>URIE<gt>E<lt>E<gt>http://acs.amazonaws.com/groups/global/AuthenticatedUsersE<lt>E<gt>E<lt>/URIE<gt>E<lt>/GranteeE<gt>>

=back

=back

To enable logging, you use C<LoggingEnabled> and its children request
elements. To disable logging, you use an empty C<BucketLoggingStatus>
request element:

C<E<lt>BucketLoggingStatus
xmlns="http://doc.s3.amazonaws.com/2006-03-01" /E<gt>>

For more information about server access logging, see Server Access
Logging
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
in the I<Amazon S3 User Guide>.

For more information about creating a bucket, see CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html).
For more information about returning the logging status of a bucket,
see GetBucketLogging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLogging.html).

The following operations are related to C<PutBucketLogging>:

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

GetBucketLogging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLogging.html)

=back



=head2 PutBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item MetricsConfiguration => L<Paws::S3::MetricsConfiguration>

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketMetricsConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Sets a metrics configuration (specified by the metrics configuration
ID) for the bucket. You can have up to 1,000 metrics configurations per
bucket. If you're updating an existing metrics configuration, note that
this is a full replacement of the existing metrics configuration. If
you don't include the elements you want to keep, they are erased.

To use this operation, you must have permissions to perform the
C<s3:PutMetricsConfiguration> action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see Permissions Related
to Bucket Subresource Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

For information about CloudWatch request metrics for Amazon S3, see
Monitoring Metrics with Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

The following operations are related to
C<PutBucketMetricsConfiguration>:

=over

=item *

DeleteBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html)

=item *

GetBucketMetricsConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html)

=item *

ListBucketMetricsConfigurations
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html)

=back

C<PutBucketMetricsConfiguration> has the following special error:

=over

=item *

Error code: C<TooManyConfigurations>

=over

=item *

Description: You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

=item *

HTTP Status Code: HTTP 400 Bad Request

=back

=back



=head2 PutBucketNotification

=over

=item Bucket => Str

=item NotificationConfiguration => L<Paws::S3::NotificationConfigurationDeprecated>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketNotification>

Returns: nothing

This operation is not supported for directory buckets.

No longer used, see the PutBucketNotificationConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotificationConfiguration.html)
operation.


=head2 PutBucketNotificationConfiguration

=over

=item Bucket => Str

=item NotificationConfiguration => L<Paws::S3::NotificationConfiguration>

=item [ExpectedBucketOwner => Str]

=item [SkipDestinationValidation => Bool]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketNotificationConfiguration>

Returns: nothing

This operation is not supported for directory buckets.

Enables notifications of specified events for a bucket. For more
information about event notifications, see Configuring Event
Notifications
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

Using this API, you can replace an existing notification configuration.
The configuration is an XML file that defines the event types that you
want Amazon S3 to publish and the destination where you want Amazon S3
to publish an event notification when it detects an event of the
specified type.

By default, your bucket has no event notifications configured. That is,
the notification configuration will be an empty
C<NotificationConfiguration>.

C<E<lt>NotificationConfigurationE<gt>>

C<E<lt>/NotificationConfigurationE<gt>>

This action replaces the existing notification configuration with the
configuration you include in the request body.

After Amazon S3 receives this request, it first verifies that any
Amazon Simple Notification Service (Amazon SNS) or Amazon Simple Queue
Service (Amazon SQS) destination exists, and that the bucket owner has
permission to publish to it by sending a test notification. In the case
of Lambda destinations, Amazon S3 verifies that the Lambda function
permissions grant Amazon S3 permission to invoke the function from the
Amazon S3 bucket. For more information, see Configuring Notifications
for Amazon S3 Events
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

You can disable notifications by adding the empty
NotificationConfiguration element.

For more information about the number of event notification
configurations that you can create per bucket, see Amazon S3 service
quotas
(https://docs.aws.amazon.com/general/latest/gr/s3.html#limits_s3) in
I<Amazon Web Services General Reference>.

By default, only the bucket owner can configure notifications on a
bucket. However, bucket owners can use a bucket policy to grant
permission to other users to set this configuration with the required
C<s3:PutBucketNotification> permission.

The PUT notification is an atomic operation. For example, suppose your
notification configuration includes SNS topic, SQS queue, and Lambda
function configurations. When you send a PUT request with this
configuration, Amazon S3 sends test messages to your SNS topic. If the
message fails, the entire PUT action will fail, and Amazon S3 will not
add the configuration to your bucket.

If the configuration in the request body includes only one
C<TopicConfiguration> specifying only the
C<s3:ReducedRedundancyLostObject> event type, the response will also
include the C<x-amz-sns-test-message-id> header containing the message
ID of the test notification sent to the topic.

The following action is related to
C<PutBucketNotificationConfiguration>:

=over

=item *

GetBucketNotificationConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html)

=back



=head2 PutBucketOwnershipControls

=over

=item Bucket => Str

=item OwnershipControls => L<Paws::S3::OwnershipControls>

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketOwnershipControls>

Returns: nothing

This operation is not supported for directory buckets.

Creates or modifies C<OwnershipControls> for an Amazon S3 bucket. To
use this operation, you must have the C<s3:PutBucketOwnershipControls>
permission. For more information about Amazon S3 permissions, see
Specifying permissions in a policy
(https://docs.aws.amazon.com/AmazonS3/latest/user-guide/using-with-s3-actions.html).

For information about Amazon S3 Object Ownership, see Using object
ownership
(https://docs.aws.amazon.com/AmazonS3/latest/user-guide/about-object-ownership.html).

The following operations are related to C<PutBucketOwnershipControls>:

=over

=item *

GetBucketOwnershipControls

=item *

DeleteBucketOwnershipControls

=back



=head2 PutBucketPolicy

=over

=item Bucket => Str

=item Policy => Str

=item [ChecksumAlgorithm => Str]

=item [ConfirmRemoveSelfBucketAccess => Bool]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketPolicy>

Returns: nothing

Applies an Amazon S3 bucket policy to an Amazon S3 bucket.

B<Directory buckets > - For directory buckets, you must make requests
for this API operation to the Regional endpoint. These endpoints
support path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. For more information
about endpoints in Availability Zones, see Regional and Zonal endpoints
for directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

If you are using an identity other than the root user of the Amazon Web
Services account that owns the bucket, the calling identity must both
have the C<PutBucketPolicy> permissions on the specified bucket and
belong to the bucket owner's account in order to use this operation.

If you don't have C<PutBucketPolicy> permissions, Amazon S3 returns a
C<403 Access Denied> error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's
account, Amazon S3 returns a C<405 Method Not Allowed> error.

To ensure that bucket owners don't inadvertently lock themselves out of
their own buckets, the root principal in a bucket owner's Amazon Web
Services account can perform the C<GetBucketPolicy>,
C<PutBucketPolicy>, and C<DeleteBucketPolicy> API actions, even if
their bucket policy explicitly denies the root principal's access.
Bucket owner root principals can only be blocked from performing these
API actions by VPC endpoint policies and Amazon Web Services
Organizations policies.

=over

=item *

B<General purpose bucket permissions> - The C<s3:PutBucketPolicy>
permission is required in a policy. For more information about general
purpose buckets bucket policies, see Using Bucket Policies and User
Policies
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API
operation, you must have the C<s3express:PutBucketPolicy> permission in
an IAM identity-based policy instead of a bucket policy. Cross-account
access to this API operation isn't supported. This operation can only
be performed by the Amazon Web Services account that owns the resource.
For more information about directory bucket policies and permissions,
see Amazon Web Services Identity and Access Management (IAM) for S3
Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html)
in the I<Amazon S3 User Guide>.

=back

=item Example bucket policies

B<General purpose buckets example bucket policies> - See Bucket policy
examples
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html)
in the I<Amazon S3 User Guide>.

B<Directory bucket example bucket policies> - See Example bucket
policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html)
in the I<Amazon S3 User Guide>.

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is
C<s3express-control.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<PutBucketPolicy>:

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

=back



=head2 PutBucketReplication

=over

=item Bucket => Str

=item ReplicationConfiguration => L<Paws::S3::ReplicationConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketReplication>

Returns: nothing

This operation is not supported for directory buckets.

Creates a replication configuration or replaces an existing one. For
more information, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in
the I<Amazon S3 User Guide>.

Specify the replication configuration in the request body. In the
replication configuration, you provide the name of the destination
bucket or buckets where you want Amazon S3 to replicate objects, the
IAM role that Amazon S3 can assume to replicate objects on your behalf,
and other relevant information. You can invoke this request for a
specific Amazon Web Services Region by using the C<aws:RequestedRegion>
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requestedregion)
condition key.

A replication configuration must include at least one rule, and can
contain a maximum of 1,000. Each rule identifies a subset of objects to
replicate by filtering the objects in the source bucket. To choose
additional subsets of objects to replicate, add a rule for each subset.

To specify a subset of the objects in the source bucket to apply a
replication rule to, add the Filter element as a child of the Rule
element. You can filter objects based on an object key prefix, one or
more object tags, or both. When you add the Filter element in the
configuration, you must also add the following elements:
C<DeleteMarkerReplication>, C<Status>, and C<Priority>.

If you are using an earlier version of the replication configuration,
Amazon S3 handles replication of delete markers differently. For more
information, see Backward Compatibility
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).

For information about enabling versioning on a bucket, see Using
Versioning
(https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html).

=over

=item Handling Replication of Encrypted Objects

By default, Amazon S3 doesn't replicate objects that are stored at rest
using server-side encryption with KMS keys. To replicate Amazon Web
Services KMS-encrypted objects, add the following:
C<SourceSelectionCriteria>, C<SseKmsEncryptedObjects>, C<Status>,
C<EncryptionConfiguration>, and C<ReplicaKmsKeyID>. For information
about replication configuration, see Replicating Objects Created with
SSE Using KMS keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-config-for-kms-objects.html).

For information on C<PutBucketReplication> errors, see List of
replication-related error codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList)

=item Permissions

To create a C<PutBucketReplication> request, you must have
C<s3:PutReplicationConfiguration> permissions for the bucket.

By default, a resource owner, in this case the Amazon Web Services
account that created the bucket, can perform this operation. The
resource owner can also grant others permissions to perform the
operation. For more information about permissions, see Specifying
Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

To perform this operation, the user or role performing the action must
have the iam:PassRole
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
permission.

=back

The following operations are related to C<PutBucketReplication>:

=over

=item *

GetBucketReplication
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html)

=item *

DeleteBucketReplication
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html)

=back



=head2 PutBucketRequestPayment

=over

=item Bucket => Str

=item RequestPaymentConfiguration => L<Paws::S3::RequestPaymentConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketRequestPayment>

Returns: nothing

This operation is not supported for directory buckets.

Sets the request payment configuration for a bucket. By default, the
bucket owner pays for downloads from the bucket. This configuration
parameter enables the bucket owner (only) to specify that the person
requesting the download will be charged for the download. For more
information, see Requester Pays Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

The following operations are related to C<PutBucketRequestPayment>:

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

GetBucketRequestPayment
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketRequestPayment.html)

=back



=head2 PutBucketTagging

=over

=item Bucket => Str

=item Tagging => L<Paws::S3::Tagging>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketTagging>

Returns: nothing

This operation is not supported for directory buckets.

Sets the tags for a bucket.

Use tags to organize your Amazon Web Services bill to reflect your own
cost structure. To do this, sign up to get your Amazon Web Services
account bill with tag key values included. Then, to see the cost of
combined resources, organize your billing information according to
resources with the same tag key values. For example, you can tag
several resources with a specific application name, and then organize
your billing information to see the total cost of that application
across several services. For more information, see Cost Allocation and
Tagging
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
and Using Cost Allocation in Amazon S3 Bucket Tags
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

When this operation sets the tags for a bucket, it will overwrite any
current tags the bucket already has. You cannot use this operation to
add tags to an existing list of tags.

To use this operation, you must have permissions to perform the
C<s3:PutBucketTagging> action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

C<PutBucketTagging> has the following special errors. For more Amazon
S3 errors see, Error Responses
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html).

=over

=item *

C<InvalidTag> - The tag provided was not a valid tag. This error can
occur if the tag did not pass input validation. For more information,
see Using Cost Allocation in Amazon S3 Bucket Tags
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

=item *

C<MalformedXML> - The XML provided does not match the schema.

=item *

C<OperationAborted> - A conflicting conditional action is currently in
progress against this resource. Please try again.

=item *

C<InternalError> - The service was unable to apply the provided tag to
the bucket.

=back

The following operations are related to C<PutBucketTagging>:

=over

=item *

GetBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html)

=item *

DeleteBucketTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html)

=back



=head2 PutBucketVersioning

=over

=item Bucket => Str

=item VersioningConfiguration => L<Paws::S3::VersioningConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [MFA => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketVersioning>

Returns: nothing

This operation is not supported for directory buckets.

When you enable versioning on a bucket for the first time, it might
take a short amount of time for the change to be fully propagated.
While this change is propagating, you might encounter intermittent
C<HTTP 404 NoSuchKey> errors for requests to objects created or updated
after enabling versioning. We recommend that you wait for 15 minutes
after enabling versioning before issuing write operations (C<PUT> or
C<DELETE>) on objects in the bucket.

Sets the versioning state of an existing bucket.

You can set the versioning state with one of the following values:

B<Enabled>E<mdash>Enables versioning for the objects in the bucket. All
objects added to the bucket receive a unique version ID.

B<Suspended>E<mdash>Disables versioning for the objects in the bucket.
All objects added to the bucket receive the version ID null.

If the versioning state has never been set on a bucket, it has no
versioning state; a GetBucketVersioning
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html)
request does not return a versioning state value.

In order to enable MFA Delete, you must be the bucket owner. If you are
the bucket owner and want to enable MFA Delete in the bucket versioning
configuration, you must include the C<x-amz-mfa request> header and the
C<Status> and the C<MfaDelete> request elements in a request to set the
versioning state of the bucket.

If you have an object expiration lifecycle configuration in your
non-versioned bucket and you want to maintain the same permanent delete
behavior when you enable versioning, you must add a noncurrent
expiration policy. The noncurrent expiration lifecycle configuration
will manage the deletes of the noncurrent object versions in the
version-enabled bucket. (A version-enabled bucket maintains one current
and zero or more noncurrent object versions.) For more information, see
Lifecycle and Versioning
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config).

The following operations are related to C<PutBucketVersioning>:

=over

=item *

CreateBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)

=item *

DeleteBucket
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

=item *

GetBucketVersioning
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html)

=back



=head2 PutBucketWebsite

=over

=item Bucket => Str

=item WebsiteConfiguration => L<Paws::S3::WebsiteConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketWebsite>

Returns: nothing

This operation is not supported for directory buckets.

Sets the configuration of the website that is specified in the
C<website> subresource. To configure a bucket as a website, you can add
this subresource on the bucket with website configuration information
such as the file name of the index document and any redirect rules. For
more information, see Hosting Websites on Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

This PUT action requires the C<S3:PutBucketWebsite> permission. By
default, only the bucket owner can configure the website attached to a
bucket; however, bucket owners can allow other users to set the website
configuration by writing a bucket policy that grants them the
C<S3:PutBucketWebsite> permission.

To redirect all website requests sent to the bucket's website endpoint,
you add a website configuration with the following elements. Because
all requests are sent to another website, you don't need to provide
index document name for the bucket.

=over

=item *

C<WebsiteConfiguration>

=item *

C<RedirectAllRequestsTo>

=item *

C<HostName>

=item *

C<Protocol>

=back

If you want granular control over redirects, you can use the following
elements to add routing rules that describe conditions for redirecting
requests and information about the redirect destination. In this case,
the website configuration must provide an index document for the
bucket, because some requests might not be redirected.

=over

=item *

C<WebsiteConfiguration>

=item *

C<IndexDocument>

=item *

C<Suffix>

=item *

C<ErrorDocument>

=item *

C<Key>

=item *

C<RoutingRules>

=item *

C<RoutingRule>

=item *

C<Condition>

=item *

C<HttpErrorCodeReturnedEquals>

=item *

C<KeyPrefixEquals>

=item *

C<Redirect>

=item *

C<Protocol>

=item *

C<HostName>

=item *

C<ReplaceKeyPrefixWith>

=item *

C<ReplaceKeyWith>

=item *

C<HttpRedirectCode>

=back

Amazon S3 has a limitation of 50 routing rules per website
configuration. If you require more than 50 routing rules, you can use
object redirect. For more information, see Configuring an Object
Redirect
(https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html)
in the I<Amazon S3 User Guide>.

The maximum request length is limited to 128 KB.


=head2 PutObject

=over

=item Bucket => Str

=item Key => Str

=item [ACL => Str]

=item [Body => Str]

=item [BucketKeyEnabled => Bool]

=item [CacheControl => Str]

=item [ChecksumAlgorithm => Str]

=item [ChecksumCRC32 => Str]

=item [ChecksumCRC32C => Str]

=item [ChecksumCRC64NVME => Str]

=item [ChecksumSHA1 => Str]

=item [ChecksumSHA256 => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [ContentType => Str]

=item [ExpectedBucketOwner => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [IfMatch => Str]

=item [IfNoneMatch => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSEncryptionContext => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [WebsiteRedirectLocation => Str]

=item [WriteOffsetBytes => Int]


=back

Each argument is described in detail in: L<Paws::S3::PutObject>

Returns: a L<Paws::S3::PutObjectOutput> instance

Adds an object to a bucket.

=over

=item *

Amazon S3 never adds partial objects; if you receive a success
response, Amazon S3 added the entire object to the bucket. You cannot
use C<PutObject> to only update a single piece of metadata for an
existing object. You must put the entire object with updated metadata
if you want to update some values.

=item *

If your bucket uses the bucket owner enforced setting for Object
Ownership, ACLs are disabled and no longer affect permissions. All
objects written to the bucket by any account will be owned by the
bucket owner.

=item *

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=back

Amazon S3 is a distributed system. If it receives multiple write
requests for the same object simultaneously, it overwrites all but the
last object written. However, Amazon S3 provides features that can
modify this behavior:

=over

=item *

B<S3 Object Lock> - To prevent objects from being deleted or
overwritten, you can use Amazon S3 Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.

=item *

B<If-None-Match> - Uploads the object only if the object key name does
not already exist in the specified bucket. Otherwise, Amazon S3 returns
a C<412 Precondition Failed> error. If a conflicting operation occurs
during the upload, S3 returns a C<409 ConditionalRequestConflict>
response. On a 409 failure, retry the upload.

Expects the * character (asterisk).

For more information, see Add preconditions to S3 operations with
conditional requests
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html)
in the I<Amazon S3 User Guide> or RFC 7232
(https://datatracker.ietf.org/doc/rfc7232/).

This functionality is not supported for S3 on Outposts.

=item *

B<S3 Versioning> - When you enable versioning for a bucket, if Amazon
S3 receives multiple write requests for the same object simultaneously,
it stores all versions of the objects. For each write request that is
made to the same object, Amazon S3 automatically generates a unique
version ID of that object being stored in Amazon S3. You can retrieve,
replace, or delete any version of the object. For more information
about versioning, see Adding Objects to Versioning-Enabled Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html)
in the I<Amazon S3 User Guide>. For information about returning the
versioning state of a bucket, see GetBucketVersioning
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html).

This functionality is not supported for directory buckets.

=back

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - The following permissions are
required in your policies when your C<PutObject> request includes
specific headers.

=over

=item *

B<C<s3:PutObject> > - To successfully complete the C<PutObject>
request, you must always have the C<s3:PutObject> permission on a
bucket to add an object to it.

=item *

B<C<s3:PutObjectAcl> > - To successfully change the objects ACL of your
C<PutObject> request, you must have the C<s3:PutObjectAcl>.

=item *

B<C<s3:PutObjectTagging> > - To successfully set the tag-set with your
C<PutObject> request, you must have the C<s3:PutObjectTagging>.

=back

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

If the object is encrypted with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

=back

=item Data integrity with Content-MD5

=over

=item *

B<General purpose bucket> - To ensure that data is not corrupted
traversing the network, use the C<Content-MD5> header. When you use
this header, Amazon S3 checks the object against the provided MD5 value
and, if they do not match, Amazon S3 returns an error. Alternatively,
when the object's ETag is its MD5 digest, you can calculate the MD5
while putting the object to Amazon S3 and compare the returned ETag to
the calculated MD5 value.

=item *

B<Directory bucket> - This functionality is not supported for directory
buckets.

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

For more information about related Amazon S3 APIs, see the following:

=over

=item *

CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)

=item *

DeleteObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

=back



=head2 PutObjectAcl

=over

=item Bucket => Str

=item Key => Str

=item [AccessControlPolicy => L<Paws::S3::AccessControlPolicy>]

=item [ACL => Str]

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectAcl>

Returns: a L<Paws::S3::PutObjectAclOutput> instance

This operation is not supported for directory buckets.

Uses the C<acl> subresource to set the access control list (ACL)
permissions for a new or existing object in an S3 bucket. You must have
the C<WRITE_ACP> permission to set the ACL of an object. For more
information, see What permissions can I grant?
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions)
in the I<Amazon S3 User Guide>.

This functionality is not supported for Amazon S3 on Outposts.

Depending on your application needs, you can choose to set the ACL on
an object using either the request body or the headers. For example, if
you have an existing application that updates a bucket ACL using the
request body, you can continue to use that approach. For more
information, see Access Control List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in
the I<Amazon S3 User Guide>.

If your bucket uses the bucket owner enforced setting for S3 Object
Ownership, ACLs are disabled and no longer affect permissions. You must
use policies to grant access to your bucket and the objects in it.
Requests to set ACLs or update ACLs fail and return the
C<AccessControlListNotSupported> error code. Requests to read ACLs are
still supported. For more information, see Controlling object ownership
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

You can set access permissions using one of the following methods:

=over

=item *

Specify a canned ACL with the C<x-amz-acl> request header. Amazon S3
supports a set of predefined ACLs, known as canned ACLs. Each canned
ACL has a predefined set of grantees and permissions. Specify the
canned ACL name as the value of C<x-amz-ac>l. If you use this header,
you cannot use other access control-specific headers in your request.
For more information, see Canned ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

=item *

Specify access permissions explicitly with the C<x-amz-grant-read>,
C<x-amz-grant-read-acp>, C<x-amz-grant-write-acp>, and
C<x-amz-grant-full-control> headers. When using these headers, you
specify explicit access permissions and grantees (Amazon Web Services
accounts or Amazon S3 groups) who will receive the permission. If you
use these ACL-specific headers, you cannot use C<x-amz-acl> header to
set a canned ACL. These parameters map to the set of permissions that
Amazon S3 supports in an ACL. For more information, see Access Control
List (ACL) Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

You specify each grantee as a type=value pair, where the type is one of
the following:

=over

=item *

C<id> E<ndash> if the value specified is the canonical user ID of an
Amazon Web Services account

=item *

C<uri> E<ndash> if you are granting permissions to a predefined group

=item *

C<emailAddress> E<ndash> if the value specified is the email address of
an Amazon Web Services account

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

For example, the following C<x-amz-grant-read> header grants list
objects permission to the two Amazon Web Services accounts identified
by their email addresses.

C<x-amz-grant-read: emailAddress="xyz@amazon.com",
emailAddress="abc@amazon.com">

=back

You can use either a canned ACL or specify access permissions
explicitly. You cannot do both.

=item Grantee Values

You can specify the person (grantee) to whom you're assigning access
rights (using request elements) in the following ways:

=over

=item *

By the person's ID:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="CanonicalUser"E<gt>E<lt>IDE<gt>E<lt>E<gt>IDE<lt>E<gt>E<lt>/IDE<gt>E<lt>DisplayNameE<gt>E<lt>E<gt>GranteesEmailE<lt>E<gt>E<lt>/DisplayNameE<gt>
E<lt>/GranteeE<gt>>

DisplayName is optional and ignored in the request.

=item *

By URI:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="Group"E<gt>E<lt>URIE<gt>E<lt>E<gt>http://acs.amazonaws.com/groups/global/AuthenticatedUsersE<lt>E<gt>E<lt>/URIE<gt>E<lt>/GranteeE<gt>>

=item *

By Email address:

C<E<lt>Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:type="AmazonCustomerByEmail"E<gt>E<lt>EmailAddressE<gt>E<lt>E<gt>Grantees@email.comE<lt>E<gt>E<lt>/EmailAddressE<gt>lt;/GranteeE<gt>>

The grantee is resolved to the CanonicalUser and, in a response to a
GET Object acl request, appears as the CanonicalUser.

Using email addresses to specify a grantee is only supported in the
following Amazon Web Services Regions:

=over

=item *

US East (N. Virginia)

=item *

US West (N. California)

=item *

US West (Oregon)

=item *

Asia Pacific (Singapore)

=item *

Asia Pacific (Sydney)

=item *

Asia Pacific (Tokyo)

=item *

Europe (Ireland)

=item *

South America (SE<atilde>o Paulo)

=back

For a list of all the Amazon S3 supported Regions and endpoints, see
Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the Amazon Web Services General Reference.

=back

=item Versioning

The ACL of an object is set at the object version level. By default,
PUT sets the ACL of the current version of an object. To set the ACL of
a different version, use the C<versionId> subresource.

=back

The following operations are related to C<PutObjectAcl>:

=over

=item *

CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=back



=head2 PutObjectLegalHold

=over

=item Bucket => Str

=item Key => Str

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [LegalHold => L<Paws::S3::ObjectLockLegalHold>]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectLegalHold>

Returns: a L<Paws::S3::PutObjectLegalHoldOutput> instance

This operation is not supported for directory buckets.

Applies a legal hold configuration to the specified object. For more
information, see Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

This functionality is not supported for Amazon S3 on Outposts.


=head2 PutObjectLockConfiguration

=over

=item Bucket => Str

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [ObjectLockConfiguration => L<Paws::S3::ObjectLockConfiguration>]

=item [RequestPayer => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectLockConfiguration>

Returns: a L<Paws::S3::PutObjectLockConfigurationOutput> instance

This operation is not supported for directory buckets.

Places an Object Lock configuration on the specified bucket. The rule
specified in the Object Lock configuration will be applied by default
to every new object placed in the specified bucket. For more
information, see Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

=over

=item *

The C<DefaultRetention> settings require both a mode and a period.

=item *

The C<DefaultRetention> period can be either C<Days> or C<Years> but
you must select one. You cannot specify C<Days> and C<Years> at the
same time.

=item *

You can enable Object Lock for new or existing buckets. For more
information, see Configuring Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-configure.html).

=back



=head2 PutObjectRetention

=over

=item Bucket => Str

=item Key => Str

=item [BypassGovernanceRetention => Bool]

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [Retention => L<Paws::S3::ObjectLockRetention>]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectRetention>

Returns: a L<Paws::S3::PutObjectRetentionOutput> instance

This operation is not supported for directory buckets.

Places an Object Retention configuration on an object. For more
information, see Locking Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
Users or accounts require the C<s3:PutObjectRetention> permission in
order to place an Object Retention configuration on objects. Bypassing
a Governance Retention configuration requires the
C<s3:BypassGovernanceRetention> permission.

This functionality is not supported for Amazon S3 on Outposts.


=head2 PutObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item Tagging => L<Paws::S3::Tagging>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectTagging>

Returns: a L<Paws::S3::PutObjectTaggingOutput> instance

This operation is not supported for directory buckets.

Sets the supplied tag-set to an object that already exists in a bucket.
A tag is a key-value pair. For more information, see Object Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

You can associate tags with an object by sending a PUT request against
the tagging subresource that is associated with the object. You can
retrieve tags by sending a GET request. For more information, see
GetObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html).

For tagging-related restrictions related to characters and encodings,
see Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html).
Note that Amazon S3 limits the maximum number of tags to 10 tags per
object.

To use this operation, you must have permission to perform the
C<s3:PutObjectTagging> action. By default, the bucket owner has this
permission and can grant this permission to others.

To put tags of any other version, use the C<versionId> query parameter.
You also need permission for the C<s3:PutObjectVersionTagging> action.

C<PutObjectTagging> has the following special errors. For more Amazon
S3 errors see, Error Responses
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html).

=over

=item *

C<InvalidTag> - The tag provided was not a valid tag. This error can
occur if the tag did not pass input validation. For more information,
see Object Tagging
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

=item *

C<MalformedXML> - The XML provided does not match the schema.

=item *

C<OperationAborted> - A conflicting conditional action is currently in
progress against this resource. Please try again.

=item *

C<InternalError> - The service was unable to apply the provided tag to
the object.

=back

The following operations are related to C<PutObjectTagging>:

=over

=item *

GetObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)

=item *

DeleteObjectTagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html)

=back



=head2 PutPublicAccessBlock

=over

=item Bucket => Str

=item PublicAccessBlockConfiguration => L<Paws::S3::PublicAccessBlockConfiguration>

=item [ChecksumAlgorithm => Str]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutPublicAccessBlock>

Returns: nothing

This operation is not supported for directory buckets.

Creates or modifies the C<PublicAccessBlock> configuration for an
Amazon S3 bucket. To use this operation, you must have the
C<s3:PutBucketPublicAccessBlock> permission. For more information about
Amazon S3 permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

When Amazon S3 evaluates the C<PublicAccessBlock> configuration for a
bucket or an object, it checks the C<PublicAccessBlock> configuration
for both the bucket (or the bucket that contains the object) and the
bucket owner's account. If the C<PublicAccessBlock> configurations are
different between the bucket and the account, Amazon S3 uses the most
restrictive combination of the bucket-level and account-level settings.

For more information about when Amazon S3 considers a bucket or an
object public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to C<PutPublicAccessBlock>:

=over

=item *

GetPublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)

=item *

DeletePublicAccessBlock
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)

=item *

GetBucketPolicyStatus
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicyStatus.html)

=item *

Using Amazon S3 Block Public Access
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

=back



=head2 RestoreObject

=over

=item Bucket => Str

=item Key => Str

=item [ChecksumAlgorithm => Str]

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [RestoreRequest => L<Paws::S3::RestoreRequest>]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::RestoreObject>

Returns: a L<Paws::S3::RestoreObjectOutput> instance

This operation is not supported for directory buckets.

Restores an archived copy of an object back into Amazon S3

This functionality is not supported for Amazon S3 on Outposts.

This action performs the following types of requests:

=over

=item *

C<restore an archive> - Restore an archived object

=back

For more information about the C<S3> structure in the request body, see
the following:

=over

=item *

PutObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

=item *

Managing Access with ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html)
in the I<Amazon S3 User Guide>

=item *

Protecting Data Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
in the I<Amazon S3 User Guide>

=back

=over

=item Permissions

To use this operation, you must have permissions to perform the
C<s3:RestoreObject> action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see Permissions Related to Bucket Subresource
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and Managing Access Permissions to Your Amazon S3 Resources
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the I<Amazon S3 User Guide>.

=item Restoring objects

Objects that you archive to the S3 Glacier Flexible Retrieval or S3
Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive
or S3 Intelligent-Tiering Deep Archive tiers, are not accessible in
real time. For objects in the S3 Glacier Flexible Retrieval or S3
Glacier Deep Archive storage classes, you must first initiate a restore
request, and then wait until a temporary copy of the object is
available. If you want a permanent copy of the object, create a copy of
it in the Amazon S3 Standard storage class in your S3 bucket. To access
an archived object, you must restore the object for the duration
(number of days) that you specify. For objects in the Archive Access or
Deep Archive Access tiers of S3 Intelligent-Tiering, you must first
initiate a restore request, and then wait until the object is moved
into the Frequent Access tier.

To restore a specific object version, you can provide a version ID. If
you don't provide a version ID, Amazon S3 restores the current version.

When restoring an archived object, you can specify one of the following
data access tier options in the C<Tier> element of the request body:

=over

=item *

C<Expedited> - Expedited retrievals allow you to quickly access your
data stored in the S3 Glacier Flexible Retrieval storage class or S3
Intelligent-Tiering Archive tier when occasional urgent requests for
restoring archives are required. For all but the largest archived
objects (250 MB+), data accessed using Expedited retrievals is
typically made available within 1E<ndash>5 minutes. Provisioned
capacity ensures that retrieval capacity for Expedited retrievals is
available when you need it. Expedited retrievals and provisioned
capacity are not available for objects stored in the S3 Glacier Deep
Archive storage class or S3 Intelligent-Tiering Deep Archive tier.

=item *

C<Standard> - Standard retrievals allow you to access any of your
archived objects within several hours. This is the default option for
retrieval requests that do not specify the retrieval option. Standard
retrievals typically finish within 3E<ndash>5 hours for objects stored
in the S3 Glacier Flexible Retrieval storage class or S3
Intelligent-Tiering Archive tier. They typically finish within 12 hours
for objects stored in the S3 Glacier Deep Archive storage class or S3
Intelligent-Tiering Deep Archive tier. Standard retrievals are free for
objects stored in S3 Intelligent-Tiering.

=item *

C<Bulk> - Bulk retrievals free for objects stored in the S3 Glacier
Flexible Retrieval and S3 Intelligent-Tiering storage classes, enabling
you to retrieve large amounts, even petabytes, of data at no cost. Bulk
retrievals typically finish within 5E<ndash>12 hours for objects stored
in the S3 Glacier Flexible Retrieval storage class or S3
Intelligent-Tiering Archive tier. Bulk retrievals are also the
lowest-cost retrieval option when restoring objects from S3 Glacier
Deep Archive. They typically finish within 48 hours for objects stored
in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering
Deep Archive tier.

=back

For more information about archive retrieval options and provisioned
capacity for C<Expedited> data access, see Restoring Archived Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html)
in the I<Amazon S3 User Guide>.

You can use Amazon S3 restore speed upgrade to change the restore speed
to a faster speed while it is in progress. For more information, see
Upgrading the speed of an in-progress restore
(https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html)
in the I<Amazon S3 User Guide>.

To get the status of object restoration, you can send a C<HEAD>
request. Operations return the C<x-amz-restore> header, which provides
information about the restoration status, in the response. You can use
Amazon S3 event notifications to notify you when a restore is initiated
or completed. For more information, see Configuring Amazon S3 Event
Notifications
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
in the I<Amazon S3 User Guide>.

After restoring an archived object, you can update the restoration
period by reissuing the request with a new period. Amazon S3 updates
the restoration period relative to the current time and charges only
for the request-there are no data transfer charges. You cannot update
the restoration period when Amazon S3 is actively processing your
current restore request for the object.

If your bucket has a lifecycle configuration with a rule that includes
an expiration action, the object expiration overrides the life span
that you specify in a restore request. For example, if you restore an
object copy for 10 days, but the object is scheduled to expire in 3
days, Amazon S3 deletes the object in 3 days. For more information
about lifecycle configuration, see PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
and Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
in I<Amazon S3 User Guide>.

=item Responses

A successful action returns either the C<200 OK> or C<202 Accepted>
status code.

=over

=item *

If the object is not previously restored, then Amazon S3 returns C<202
Accepted> in the response.

=item *

If the object is previously restored, Amazon S3 returns C<200 OK> in
the response.

=back

=over

=item *

Special errors:

=over

=item *

I<Code: RestoreAlreadyInProgress>

=item *

I<Cause: Object restore is already in progress.>

=item *

I<HTTP Status Code: 409 Conflict>

=item *

I<SOAP Fault Code Prefix: Client>

=back

=item *

=over

=item *

I<Code: GlacierExpeditedRetrievalNotAvailable>

=item *

I<Cause: expedited retrievals are currently not available. Try again
later. (Returned if there is insufficient capacity to process the
Expedited request. This error applies only to Expedited retrievals and
not to S3 Standard or Bulk retrievals.)>

=item *

I<HTTP Status Code: 503>

=item *

I<SOAP Fault Code Prefix: N/A>

=back

=back

=back

The following operations are related to C<RestoreObject>:

=over

=item *

PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)

=item *

GetBucketNotificationConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html)

=back



=head2 SelectObjectContent

=over

=item Bucket => Str

=item Expression => Str

=item ExpressionType => Str

=item InputSerialization => L<Paws::S3::InputSerialization>

=item Key => Str

=item OutputSerialization => L<Paws::S3::OutputSerialization>

=item [ExpectedBucketOwner => Str]

=item [RequestProgress => L<Paws::S3::RequestProgress>]

=item [ScanRange => L<Paws::S3::ScanRange>]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::SelectObjectContent>

Returns: a L<Paws::S3::SelectObjectContentOutput> instance

This operation is not supported for directory buckets.

This action filters the contents of an Amazon S3 object based on a
simple structured query language (SQL) statement. In the request, along
with the SQL expression, you must also specify a data serialization
format (JSON, CSV, or Apache Parquet) of the object. Amazon S3 uses
this format to parse object data into records, and returns only records
that match the specified SQL expression. You must also specify the data
serialization format for the response.

This functionality is not supported for Amazon S3 on Outposts.

For more information about Amazon S3 Select, see Selecting Content from
Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/selecting-content-from-objects.html)
and SELECT Command
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-glacier-select-sql-reference-select.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

You must have the C<s3:GetObject> permission for this operation. Amazon
S3 Select does not support anonymous access. For more information about
permissions, see Specifying Permissions in a Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
in the I<Amazon S3 User Guide>.

=item Object Data Formats

You can use Amazon S3 Select to query objects that have the following
format properties:

=over

=item *

I<CSV, JSON, and Parquet> - Objects must be in CSV, JSON, or Parquet
format.

=item *

I<UTF-8> - UTF-8 is the only encoding type Amazon S3 Select supports.

=item *

I<GZIP or BZIP2> - CSV and JSON files can be compressed using GZIP or
BZIP2. GZIP and BZIP2 are the only compression formats that Amazon S3
Select supports for CSV and JSON files. Amazon S3 Select supports
columnar compression for Parquet using GZIP or Snappy. Amazon S3 Select
does not support whole-object compression for Parquet objects.

=item *

I<Server-side encryption> - Amazon S3 Select supports querying objects
that are protected with server-side encryption.

For objects that are encrypted with customer-provided encryption keys
(SSE-C), you must use HTTPS, and you must use the headers that are
documented in the GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html).
For more information about SSE-C, see Server-Side Encryption (Using
Customer-Provided Encryption Keys)
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

For objects that are encrypted with Amazon S3 managed keys (SSE-S3) and
Amazon Web Services KMS keys (SSE-KMS), server-side encryption is
handled transparently, so you don't need to specify anything. For more
information about server-side encryption, including SSE-S3 and SSE-KMS,
see Protecting Data Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
in the I<Amazon S3 User Guide>.

=back

=item Working with the Response Body

Given the response size is unknown, Amazon S3 Select streams the
response as a series of messages and includes a C<Transfer-Encoding>
header with C<chunked> as its value in the response. For more
information, see Appendix: SelectObjectContent Response
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTSelectObjectAppendix.html).

=item GetObject Support

The C<SelectObjectContent> action does not support the following
C<GetObject> functionality. For more information, see GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html).

=over

=item *

C<Range>: Although you can specify a scan range for an Amazon S3 Select
request (see SelectObjectContentRequest - ScanRange
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_SelectObjectContent.html#AmazonS3-SelectObjectContent-request-ScanRange)
in the request parameters), you cannot specify the range of bytes of an
object to return.

=item *

The C<GLACIER>, C<DEEP_ARCHIVE>, and C<REDUCED_REDUNDANCY> storage
classes, or the C<ARCHIVE_ACCESS> and C<DEEP_ARCHIVE_ACCESS> access
tiers of the C<INTELLIGENT_TIERING> storage class: You cannot query
objects in the C<GLACIER>, C<DEEP_ARCHIVE>, or C<REDUCED_REDUNDANCY>
storage classes, nor objects in the C<ARCHIVE_ACCESS> or
C<DEEP_ARCHIVE_ACCESS> access tiers of the C<INTELLIGENT_TIERING>
storage class. For more information about storage classes, see Using
Amazon S3 storage classes
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html)
in the I<Amazon S3 User Guide>.

=back

=item Special Errors

For a list of special errors for this operation, see List of SELECT
Object Content Error Codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#SelectObjectContentErrorCodeList)

=back

The following operations are related to C<SelectObjectContent>:

=over

=item *

GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

=item *

GetBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

=item *

PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)

=back



=head2 UploadPart

=over

=item Bucket => Str

=item Key => Str

=item PartNumber => Int

=item UploadId => Str

=item [Body => Str]

=item [ChecksumAlgorithm => Str]

=item [ChecksumCRC32 => Str]

=item [ChecksumCRC32C => Str]

=item [ChecksumCRC64NVME => Str]

=item [ChecksumSHA1 => Str]

=item [ChecksumSHA256 => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::UploadPart>

Returns: a L<Paws::S3::UploadPartOutput> instance

Uploads a part in a multipart upload.

In this operation, you provide new data as a part of an object in your
request. However, you have an option to specify your existing Amazon S3
object as a data source for the part you are uploading. To upload a
part from an existing object, you use the UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)
operation.

You must initiate a multipart upload (see CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html))
before you can upload any part. In response to your initiate request,
Amazon S3 returns an upload ID, a unique identifier that you must
include in your upload part request.

Part numbers can be any number from 1 to 10,000, inclusive. A part
number uniquely identifies a part and also defines its position within
the object being created. If you upload a new part using the same part
number that was used with a previous part, the previously uploaded part
is overwritten.

For information about maximum and minimum part sizes and other
multipart upload specifications, see Multipart upload limits
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in
the I<Amazon S3 User Guide>.

After you initiate multipart upload and upload one or more parts, you
must either complete or abort multipart upload in order to stop getting
charged for storage of the uploaded parts. Only after you either
complete or abort multipart upload, Amazon S3 frees up the parts
storage and stops charging you for the parts storage.

For more information on multipart uploads, go to Multipart Upload
Overview
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
the I<Amazon S3 User Guide >.

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Permissions

=over

=item *

B<General purpose bucket permissions> - To perform a multipart upload
with encryption using an Key Management Service key, the requester must
have permission to the C<kms:Decrypt> and C<kms:GenerateDataKey>
actions on the key. The requester must also have permissions for the
C<kms:GenerateDataKey> action for the C<CreateMultipartUpload> API.
Then, the requester needs permissions for the C<kms:Decrypt> action on
the C<UploadPart> and C<UploadPartCopy> APIs.

These permissions are required because Amazon S3 must decrypt and read
data from the encrypted file parts before it completes the multipart
upload. For more information about KMS permissions, see Protecting data
using server-side encryption with KMS
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
in the I<Amazon S3 User Guide>. For information about the permissions
required to use the multipart upload API, see Multipart upload and
permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
and Multipart upload API and permissions
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions)
in the I<Amazon S3 User Guide>.

=item *

B<Directory bucket permissions> - To grant access to this API operation
on a directory bucket, we recommend that you use the C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html)
API operation for session-based authorization. Specifically, you grant
the C<s3express:CreateSession> permission to the directory bucket in a
bucket policy or an IAM identity-based policy. Then, you make the
C<CreateSession> API call on the bucket to obtain a session token. With
the session token in your request header, you can make API requests to
this operation. After the session token expires, you make another
C<CreateSession> API call to generate a new session token for use.
Amazon Web Services CLI or SDKs create session and refresh the session
token automatically to avoid service interruptions when a session
expires. For more information about authorization, see C<CreateSession>
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html).

If the object is encrypted with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

=back

=item Data integrity

B<General purpose bucket> - To ensure that data is not corrupted
traversing the network, specify the C<Content-MD5> header in the upload
part request. Amazon S3 checks the part data against the provided MD5
value. If they do not match, Amazon S3 returns an error. If the upload
request is signed with Signature Version 4, then Amazon Web Services S3
uses the C<x-amz-content-sha256> header as a checksum instead of
C<Content-MD5>. For more information see Authenticating Requests: Using
the Authorization Header (Amazon Web Services Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html).

B<Directory buckets> - MD5 is not supported by directory buckets. You
can use checksum algorithms to check object integrity.

=item Encryption

=over

=item *

B<General purpose bucket> - Server-side encryption is for data
encryption at rest. Amazon S3 encrypts your data as it writes it to
disks in its data centers and decrypts it when you access it. You have
mutually exclusive options to protect data using server-side encryption
in Amazon S3, depending on how you choose to manage the encryption
keys. Specifically, the encryption key options are Amazon S3 managed
keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and
Customer-Provided Keys (SSE-C). Amazon S3 encrypts data with
server-side encryption using Amazon S3 managed keys (SSE-S3) by
default. You can optionally tell Amazon S3 to encrypt data at rest
using server-side encryption with other key options. The option you use
depends on whether you want to use KMS keys (SSE-KMS) or provide your
own encryption key (SSE-C).

Server-side encryption is supported by the S3 Multipart Upload
operations. Unless you are using a customer-provided encryption key
(SSE-C), you don't need to specify the encryption parameters in each
UploadPart request. Instead, you only need to specify the server-side
encryption parameters in the initial Initiate Multipart request. For
more information, see CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).

If you request server-side encryption using a customer-provided
encryption key (SSE-C) in your initiate multipart upload request, you
must provide identical encryption information in each part upload using
the following request headers.

=over

=item *

x-amz-server-side-encryption-customer-algorithm

=item *

x-amz-server-side-encryption-customer-key

=item *

x-amz-server-side-encryption-customer-key-MD5

=back

For more information, see Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html)
in the I<Amazon S3 User Guide>.

=item *

B<Directory buckets > - For directory buckets, there are only two
supported options for server-side encryption: server-side encryption
with Amazon S3 managed keys (SSE-S3) (C<AES256>) and server-side
encryption with KMS keys (SSE-KMS) (C<aws:kms>).

=back

=item Special errors

=over

=item *

Error Code: C<NoSuchUpload>

=over

=item *

Description: The specified multipart upload does not exist. The upload
ID might be invalid, or the multipart upload might have been aborted or
completed.

=item *

HTTP Status Code: 404 Not Found

=item *

SOAP Fault Code Prefix: Client

=back

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<UploadPart>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

ListMultipartUploads
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)

=back



=head2 UploadPartCopy

=over

=item Bucket => Str

=item CopySource => Str

=item Key => Str

=item PartNumber => Int

=item UploadId => Str

=item [CopySourceIfMatch => Str]

=item [CopySourceIfModifiedSince => Str]

=item [CopySourceIfNoneMatch => Str]

=item [CopySourceIfUnmodifiedSince => Str]

=item [CopySourceRange => Str]

=item [CopySourceSSECustomerAlgorithm => Str]

=item [CopySourceSSECustomerKey => Str]

=item [CopySourceSSECustomerKeyMD5 => Str]

=item [ExpectedBucketOwner => Str]

=item [ExpectedSourceBucketOwner => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::UploadPartCopy>

Returns: a L<Paws::S3::UploadPartCopyOutput> instance

Uploads a part by copying data from an existing object as data source.
To specify the data source, you add the request header
C<x-amz-copy-source> in your request. To specify a byte range, you add
the request header C<x-amz-copy-source-range> in your request.

For information about maximum and minimum part sizes and other
multipart upload specifications, see Multipart upload limits
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in
the I<Amazon S3 User Guide>.

Instead of copying data from an existing object as part data, you might
use the UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
action to upload new data as a part of an object in your request.

You must initiate a multipart upload before you can upload any part. In
response to your initiate request, Amazon S3 returns the upload ID, a
unique identifier that you must include in your upload part request.

For conceptual information about multipart uploads, see Uploading
Objects Using Multipart Upload
(https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html)
in the I<Amazon S3 User Guide>. For information about copying objects
using a single atomic action vs. a multipart upload, see Operations on
Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - For directory buckets, you must make requests
for this API operation to the Zonal endpoint. These endpoints support
virtual-hosted-style requests in the format
C<https://I<amzn-s3-demo-bucket>.s3express-I<zone-id>.I<region-code>.amazonaws.com/I<key-name>
>. Path-style requests are not supported. For more information about
endpoints in Availability Zones, see Regional and Zonal endpoints for
directory buckets in Availability Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/endpoint-directory-buckets-AZ.html)
in the I<Amazon S3 User Guide>. For more information about endpoints in
Local Zones, see Concepts for directory buckets in Local Zones
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-lzs-for-directory-buckets.html)
in the I<Amazon S3 User Guide>.

=over

=item Authentication and authorization

All C<UploadPartCopy> requests must be authenticated and signed by
using IAM credentials (access key ID and secret access key for the IAM
identities). All headers with the C<x-amz-> prefix, including
C<x-amz-copy-source>, must be signed. For more information, see REST
Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).

B<Directory buckets> - You must use IAM credentials to authenticate and
authorize your access to the C<UploadPartCopy> API operation, instead
of using the temporary security credentials through the
C<CreateSession> API operation.

Amazon Web Services CLI or SDKs handles authentication and
authorization on your behalf.

=item Permissions

You must have C<READ> access to the source object and C<WRITE> access
to the destination bucket.

=over

=item *

B<General purpose bucket permissions> - You must have the permissions
in a policy based on the bucket types of your source bucket and
destination bucket in an C<UploadPartCopy> operation.

=over

=item *

If the source object is in a general purpose bucket, you must have the
B< C<s3:GetObject> > permission to read the source object that is being
copied.

=item *

If the destination bucket is a general purpose bucket, you must have
the B< C<s3:PutObject> > permission to write the object copy to the
destination bucket.

=item *

To perform a multipart upload with encryption using an Key Management
Service key, the requester must have permission to the C<kms:Decrypt>
and C<kms:GenerateDataKey> actions on the key. The requester must also
have permissions for the C<kms:GenerateDataKey> action for the
C<CreateMultipartUpload> API. Then, the requester needs permissions for
the C<kms:Decrypt> action on the C<UploadPart> and C<UploadPartCopy>
APIs. These permissions are required because Amazon S3 must decrypt and
read data from the encrypted file parts before it completes the
multipart upload. For more information about KMS permissions, see
Protecting data using server-side encryption with KMS
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
in the I<Amazon S3 User Guide>. For information about the permissions
required to use the multipart upload API, see Multipart upload and
permissions
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
and Multipart upload API and permissions
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions)
in the I<Amazon S3 User Guide>.

=back

=item *

B<Directory bucket permissions> - You must have permissions in a bucket
policy or an IAM identity-based policy based on the source and
destination bucket types in an C<UploadPartCopy> operation.

=over

=item *

If the source object that you want to copy is in a directory bucket,
you must have the B< C<s3express:CreateSession> > permission in the
C<Action> element of a policy to read the object. By default, the
session is in the C<ReadWrite> mode. If you want to restrict the
access, you can explicitly set the C<s3express:SessionMode> condition
key to C<ReadOnly> on the copy source bucket.

=item *

If the copy destination is a directory bucket, you must have the B<
C<s3express:CreateSession> > permission in the C<Action> element of a
policy to write the object to the destination. The
C<s3express:SessionMode> condition key cannot be set to C<ReadOnly> on
the copy destination.

=back

If the object is encrypted with SSE-KMS, you must also have the
C<kms:GenerateDataKey> and C<kms:Decrypt> permissions in IAM
identity-based policies and KMS key policies for the KMS key.

For example policies, see Example bucket policies for S3 Express One
Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html)
and Amazon Web Services Identity and Access Management (IAM)
identity-based policies for S3 Express One Zone
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html)
in the I<Amazon S3 User Guide>.

=back

=item Encryption

=over

=item *

B<General purpose buckets > - For information about using server-side
encryption with customer-provided encryption keys with the
C<UploadPartCopy> operation, see CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)
and UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html).

=item *

B<Directory buckets > - For directory buckets, there are only two
supported options for server-side encryption: server-side encryption
with Amazon S3 managed keys (SSE-S3) (C<AES256>) and server-side
encryption with KMS keys (SSE-KMS) (C<aws:kms>). For more information,
see Protecting data with server-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html)
in the I<Amazon S3 User Guide>.

For directory buckets, when you perform a C<CreateMultipartUpload>
operation and an C<UploadPartCopy> operation, the request headers you
provide in the C<CreateMultipartUpload> request must match the default
encryption configuration of the destination bucket.

S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted
objects from general purpose buckets to directory buckets, from
directory buckets to general purpose buckets, or between directory
buckets, through UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html).
In this case, Amazon S3 makes a call to KMS every time a copy request
is made for a KMS-encrypted object.

=back

=item Special errors

=over

=item *

Error Code: C<NoSuchUpload>

=over

=item *

Description: The specified multipart upload does not exist. The upload
ID might be invalid, or the multipart upload might have been aborted or
completed.

=item *

HTTP Status Code: 404 Not Found

=back

=item *

Error Code: C<InvalidRequest>

=over

=item *

Description: The specified copy source is not supported as a byte-range
copy source.

=item *

HTTP Status Code: 400 Bad Request

=back

=back

=item HTTP Host header syntax

B<Directory buckets > - The HTTP Host header syntax is C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.

=back

The following operations are related to C<UploadPartCopy>:

=over

=item *

CreateMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

=item *

UploadPart
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

=item *

CompleteMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

=item *

AbortMultipartUpload
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

=item *

ListParts
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

=item *

ListMultipartUploads
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)

=back



=head2 WriteGetObjectResponse

=over

=item RequestRoute => Str

=item RequestToken => Str

=item [AcceptRanges => Str]

=item [Body => Str]

=item [BucketKeyEnabled => Bool]

=item [CacheControl => Str]

=item [ChecksumCRC32 => Str]

=item [ChecksumCRC32C => Str]

=item [ChecksumCRC64NVME => Str]

=item [ChecksumSHA1 => Str]

=item [ChecksumSHA256 => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentLength => Int]

=item [ContentRange => Str]

=item [ContentType => Str]

=item [DeleteMarker => Bool]

=item [ErrorCode => Str]

=item [ErrorMessage => Str]

=item [ETag => Str]

=item [Expiration => Str]

=item [Expires => Str]

=item [LastModified => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [MissingMeta => Int]

=item [ObjectLockLegalHoldStatus => Str]

=item [ObjectLockMode => Str]

=item [ObjectLockRetainUntilDate => Str]

=item [PartsCount => Int]

=item [ReplicationStatus => Str]

=item [RequestCharged => Str]

=item [Restore => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSKeyId => Str]

=item [StatusCode => Int]

=item [StorageClass => Str]

=item [TagCount => Int]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::WriteGetObjectResponse>

Returns: nothing

This operation is not supported for directory buckets.

Passes transformed objects to a C<GetObject> operation when using
Object Lambda access points. For information about Object Lambda access
points, see Transforming objects with Object Lambda access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
in the I<Amazon S3 User Guide>.

This operation supports metadata that can be returned by GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html),
in addition to C<RequestRoute>, C<RequestToken>, C<StatusCode>,
C<ErrorCode>, and C<ErrorMessage>. The C<GetObject> response metadata
is supported so that the C<WriteGetObjectResponse> caller, typically an
Lambda function, can provide the same metadata when it internally
invokes C<GetObject>. When C<WriteGetObjectResponse> is called by a
customer-owned Lambda function, the metadata returned to the end user
C<GetObject> call might differ from what Amazon S3 would normally
return.

You can include any number of metadata headers. When including a
metadata header, it should be prefaced with C<x-amz-meta>. For example,
C<x-amz-meta-my-custom-header: MyCustomValue>. The primary use case for
this is to forward C<GetObject> metadata.

Amazon Web Services provides some prebuilt Lambda functions that you
can use with S3 Object Lambda to detect and redact personally
identifiable information (PII) and decompress S3 objects. These Lambda
functions are available in the Amazon Web Services Serverless
Application Repository, and can be selected through the Amazon Web
Services Management Console when you create your Object Lambda access
point.

Example 1: PII Access Control - This Lambda function uses Amazon
Comprehend, a natural language processing (NLP) service using machine
learning to find insights and relationships in text. It automatically
detects personally identifiable information (PII) such as names,
addresses, dates, credit card numbers, and social security numbers from
documents in your Amazon S3 bucket.

Example 2: PII Redaction - This Lambda function uses Amazon Comprehend,
a natural language processing (NLP) service using machine learning to
find insights and relationships in text. It automatically redacts
personally identifiable information (PII) such as names, addresses,
dates, credit card numbers, and social security numbers from documents
in your Amazon S3 bucket.

Example 3: Decompression - The Lambda function
S3ObjectLambdaDecompression, is equipped to decompress objects stored
in S3 in one of six compressed file formats including bzip2, gzip,
snappy, zlib, zstandard and ZIP.

For information on how to view and use these functions, see Using
Amazon Web Services built Lambda functions
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-examples.html)
in the I<Amazon S3 User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBuckets(sub { },[BucketRegion => Str, ContinuationToken => Str, MaxBuckets => Int, Prefix => Str])

=head2 ListAllBuckets([BucketRegion => Str, ContinuationToken => Str, MaxBuckets => Int, Prefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Buckets, passing the object as the first parameter, and the string 'Buckets' as the second parameter 

If not, it will return a a L<Paws::S3::ListBucketsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDirectoryBuckets(sub { },[ContinuationToken => Str, MaxDirectoryBuckets => Int])

=head2 ListAllDirectoryBuckets([ContinuationToken => Str, MaxDirectoryBuckets => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Buckets, passing the object as the first parameter, and the string 'Buckets' as the second parameter 

If not, it will return a a L<Paws::S3::ListDirectoryBucketsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMultipartUploads(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, KeyMarker => Str, MaxUploads => Int, Prefix => Str, RequestPayer => Str, UploadIdMarker => Str])

=head2 ListAllMultipartUploads(Bucket => Str, [Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, KeyMarker => Str, MaxUploads => Int, Prefix => Str, RequestPayer => Str, UploadIdMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Uploads, passing the object as the first parameter, and the string 'Uploads' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListMultipartUploadsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjects(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, Marker => Str, MaxKeys => Int, OptionalObjectAttributes => ArrayRef[Str|Undef], Prefix => Str, RequestPayer => Str])

=head2 ListAllObjects(Bucket => Str, [Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, Marker => Str, MaxKeys => Int, OptionalObjectAttributes => ArrayRef[Str|Undef], Prefix => Str, RequestPayer => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contents, passing the object as the first parameter, and the string 'Contents' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectsV2(sub { },Bucket => Str, [ContinuationToken => Str, Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, FetchOwner => Bool, MaxKeys => Int, OptionalObjectAttributes => ArrayRef[Str|Undef], Prefix => Str, RequestPayer => Str, StartAfter => Str])

=head2 ListAllObjectsV2(Bucket => Str, [ContinuationToken => Str, Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, FetchOwner => Bool, MaxKeys => Int, OptionalObjectAttributes => ArrayRef[Str|Undef], Prefix => Str, RequestPayer => Str, StartAfter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contents, passing the object as the first parameter, and the string 'Contents' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectsV2Output> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectVersions(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, KeyMarker => Str, MaxKeys => Int, OptionalObjectAttributes => ArrayRef[Str|Undef], Prefix => Str, RequestPayer => Str, VersionIdMarker => Str])

=head2 ListAllObjectVersions(Bucket => Str, [Delimiter => Str, EncodingType => Str, ExpectedBucketOwner => Str, KeyMarker => Str, MaxKeys => Int, OptionalObjectAttributes => ArrayRef[Str|Undef], Prefix => Str, RequestPayer => Str, VersionIdMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Versions, passing the object as the first parameter, and the string 'Versions' as the second parameter 

 - DeleteMarkers, passing the object as the first parameter, and the string 'DeleteMarkers' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectVersionsOutput> instance with all the C<param>s; andC<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllParts(sub { },Bucket => Str, Key => Str, UploadId => Str, [ExpectedBucketOwner => Str, MaxParts => Int, PartNumberMarker => Int, RequestPayer => Str, SSECustomerAlgorithm => Str, SSECustomerKey => Str, SSECustomerKeyMD5 => Str])

=head2 ListAllParts(Bucket => Str, Key => Str, UploadId => Str, [ExpectedBucketOwner => Str, MaxParts => Int, PartNumberMarker => Int, RequestPayer => Str, SSECustomerAlgorithm => Str, SSECustomerKey => Str, SSECustomerKeyMD5 => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parts, passing the object as the first parameter, and the string 'Parts' as the second parameter 

If not, it will return a a L<Paws::S3::ListPartsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

