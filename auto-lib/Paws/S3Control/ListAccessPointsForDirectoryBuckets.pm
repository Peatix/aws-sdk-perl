
package Paws::S3Control::ListAccessPointsForDirectoryBuckets;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has DirectoryBucket => (is => 'ro', isa => 'Str', query_name => 'directoryBucket', traits => ['ParamInQuery']);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessPointsForDirectoryBuckets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspointfordirectory');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListAccessPointsForDirectoryBucketsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessPointsForDirectoryBuckets - Arguments for method ListAccessPointsForDirectoryBuckets on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessPointsForDirectoryBuckets on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListAccessPointsForDirectoryBuckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessPointsForDirectoryBuckets.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListAccessPointsForDirectoryBucketsResult =
      $s3 -control->ListAccessPointsForDirectoryBuckets(
      AccountId       => 'MyAccountId',
      DirectoryBucket => 'MyBucketName',                     # OPTIONAL
      MaxResults      => 1,                                  # OPTIONAL
      NextToken       => 'MyNonEmptyMaxLength1024String',    # OPTIONAL
      );

    # Results:
    my $AccessPointList =
      $ListAccessPointsForDirectoryBucketsResult->AccessPointList;
    my $NextToken = $ListAccessPointsForDirectoryBucketsResult->NextToken;

# Returns a L<Paws::S3Control::ListAccessPointsForDirectoryBucketsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListAccessPointsForDirectoryBuckets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID that owns the access points.



=head2 DirectoryBucket => Str

The name of the directory bucket associated with the access points you
want to list.



=head2 MaxResults => Int

The maximum number of access points that you would like returned in the
C<ListAccessPointsForDirectoryBuckets> response. If the directory
bucket is associated with more than this number of access points, the
results include the pagination token C<NextToken>. Make another call
using the C<NextToken> to retrieve more results.



=head2 NextToken => Str

If C<NextToken> is returned, there are more access points available
than requested in the C<maxResults> value. The value of C<NextToken> is
a unique pagination token for each page. Make the call again using the
returned token to retrieve the next page. Keep all other arguments
unchanged. Each pagination token expires after 24 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessPointsForDirectoryBuckets in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

