
package Paws::StorageGateway::StartCacheReport;
  use Moose;
  has BucketRegion => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has ExclusionFilters => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::CacheReportFilter]');
  has FileShareARN => (is => 'ro', isa => 'Str', required => 1);
  has InclusionFilters => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::CacheReportFilter]');
  has LocationARN => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');
  has VPCEndpointDNSName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCacheReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::StartCacheReportOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StartCacheReport - Arguments for method StartCacheReport on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCacheReport on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method StartCacheReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCacheReport.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $StartCacheReportOutput = $storagegateway->StartCacheReport(
      BucketRegion     => 'MyRegionId',
      ClientToken      => 'MyClientToken',
      FileShareARN     => 'MyFileShareARN',
      LocationARN      => 'MyLocationARN',
      Role             => 'MyRole',
      ExclusionFilters => [
        {
          Name   => 'UploadState',    # values: UploadState, UploadFailureReason
          Values => [
            'MyCacheReportFilterValue', ...    # min: 1, max: 25
          ],

        },
        ...
      ],    # OPTIONAL
      InclusionFilters => [
        {
          Name   => 'UploadState',    # values: UploadState, UploadFailureReason
          Values => [
            'MyCacheReportFilterValue', ...    # min: 1, max: 25
          ],

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VPCEndpointDNSName => 'MyDNSHostName',    # OPTIONAL
    );

    # Results:
    my $CacheReportARN = $StartCacheReportOutput->CacheReportARN;

    # Returns a L<Paws::StorageGateway::StartCacheReportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/StartCacheReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketRegion => Str

The Amazon Web Services Region of the Amazon S3 bucket where you want
to save the cache report.



=head2 B<REQUIRED> ClientToken => Str

A unique identifier that you use to ensure idempotent report generation
if you need to retry an unsuccessful C<StartCacheReport> request. If
you retry a request, use the same C<ClientToken> you specified in the
initial request.



=head2 ExclusionFilters => ArrayRef[L<Paws::StorageGateway::CacheReportFilter>]

The list of filters and parameters that determine which files are
excluded from the report. You must specify at least one value for
C<InclusionFilters> or C<ExclusionFilters> in a C<StartCacheReport>
request.



=head2 B<REQUIRED> FileShareARN => Str





=head2 InclusionFilters => ArrayRef[L<Paws::StorageGateway::CacheReportFilter>]

The list of filters and parameters that determine which files are
included in the report. You must specify at least one value for
C<InclusionFilters> or C<ExclusionFilters> in a C<StartCacheReport>
request.



=head2 B<REQUIRED> LocationARN => Str

The ARN of the Amazon S3 bucket where you want to save the cache
report.

We do not recommend saving the cache report to the same Amazon S3
bucket for which you are generating the report.

This field does not accept access point ARNs.



=head2 B<REQUIRED> Role => Str

The ARN of the IAM role used when saving the cache report to Amazon S3.



=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 key/value tags that you can assign to the cache
report. Using tags can help you categorize your reports and more easily
locate them in search results.



=head2 VPCEndpointDNSName => Str

The DNS name of the VPC endpoint associated with the Amazon S3 where
you want to save the cache report. Optional.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCacheReport in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

