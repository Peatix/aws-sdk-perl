
package Paws::S3::GetObjectAcl;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectAcl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectAclOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectAcl - Arguments for method GetObjectAcl on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectAcl on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObjectAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectAcl.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To retrieve object ACL
    # The following example retrieves access control list (ACL) of an object.
    my $GetObjectAclOutput = $s3->GetObjectAcl(
      'Bucket' => 'examplebucket',
      'Key'    => 'HappyFace.jpg'
    );

    # Results:
    my $Grants = $GetObjectAclOutput->Grants;
    my $Owner  = $GetObjectAclOutput->Owner;

    # Returns a L<Paws::S3::GetObjectAclOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObjectAcl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name that contains the object for which to get the ACL
information.

B<Access points> - When you use this action with an access point for
general purpose buckets, you must provide the alias of the access point
in place of the bucket name or specify the access point ARN. When you
use this action with an access point for directory buckets, you must
provide the access point name in place of the bucket name. When using
the access point ARN, you must direct requests to the access point
hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see Using access
points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 B<REQUIRED> Key => Str

The key of the object for which to get the ACL information.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

Version ID used to reference a specific version of the object.

This functionality is not supported for directory buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

