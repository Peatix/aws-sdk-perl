
package Paws::S3Control::ListAccessGrants;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ApplicationArn => (is => 'ro', isa => 'Str', query_name => 'application_arn', traits => ['ParamInQuery']);
  has GranteeIdentifier => (is => 'ro', isa => 'Str', query_name => 'granteeidentifier', traits => ['ParamInQuery']);
  has GranteeType => (is => 'ro', isa => 'Str', query_name => 'granteetype', traits => ['ParamInQuery']);
  has GrantScope => (is => 'ro', isa => 'Str', query_name => 'grantscope', traits => ['ParamInQuery']);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);
  has Permission => (is => 'ro', isa => 'Str', query_name => 'permission', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessGrants');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/grants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListAccessGrantsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessGrants - Arguments for method ListAccessGrants on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessGrants on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListAccessGrants.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessGrants.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListAccessGrantsResult = $s3 -control->ListAccessGrants(
      AccountId         => 'MyAccountId',
      ApplicationArn    => 'MyIdentityCenterApplicationArn',    # OPTIONAL
      GrantScope        => 'MyS3Prefix',                        # OPTIONAL
      GranteeIdentifier => 'MyGranteeIdentifier',               # OPTIONAL
      GranteeType       => 'DIRECTORY_USER',                    # OPTIONAL
      MaxResults        => 1,                                   # OPTIONAL
      NextToken         => 'MyContinuationToken',               # OPTIONAL
      Permission        => 'READ',                              # OPTIONAL
    );

    # Results:
    my $AccessGrantsList = $ListAccessGrantsResult->AccessGrantsList;
    my $NextToken        = $ListAccessGrantsResult->NextToken;

    # Returns a L<Paws::S3Control::ListAccessGrantsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListAccessGrants>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity
Center application associated with your Identity Center instance. If
the grant includes an application ARN, the grantee can only access the
S3 data through this application.



=head2 GranteeIdentifier => Str

The unique identifer of the C<Grantee>. If the grantee type is C<IAM>,
the identifier is the IAM Amazon Resource Name (ARN) of the user or
role. If the grantee type is a directory user or group, the identifier
is 128-bit universally unique identifier (UUID) in the format
C<a1b2c3d4-5678-90ab-cdef-EXAMPLE11111>. You can obtain this UUID from
your Amazon Web Services IAM Identity Center instance.



=head2 GranteeType => Str

The type of the grantee to which access has been granted. It can be one
of the following values:

=over

=item *

C<IAM> - An IAM user or role.

=item *

C<DIRECTORY_USER> - Your corporate directory user. You can use this
option if you have added your corporate identity directory to IAM
Identity Center and associated the IAM Identity Center instance with
your S3 Access Grants instance.

=item *

C<DIRECTORY_GROUP> - Your corporate directory group. You can use this
option if you have added your corporate identity directory to IAM
Identity Center and associated the IAM Identity Center instance with
your S3 Access Grants instance.

=back


Valid values are: C<"DIRECTORY_USER">, C<"DIRECTORY_GROUP">, C<"IAM">

=head2 GrantScope => Str

The S3 path of the data to which you are granting access. It is the
result of appending the C<Subprefix> to the location scope.



=head2 MaxResults => Int

The maximum number of access grants that you would like returned in the
C<List Access Grants> response. If the results include the pagination
token C<NextToken>, make another call using the C<NextToken> to
determine if there are more results.



=head2 NextToken => Str

A pagination token to request the next page of results. Pass this value
into a subsequent C<List Access Grants> request in order to retrieve
the next page of results.



=head2 Permission => Str

The type of permission granted to your S3 data, which can be set to one
of the following values:

=over

=item *

C<READ> E<ndash> Grant read-only access to the S3 data.

=item *

C<WRITE> E<ndash> Grant write-only access to the S3 data.

=item *

C<READWRITE> E<ndash> Grant both read and write access to the S3 data.

=back


Valid values are: C<"READ">, C<"WRITE">, C<"READWRITE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessGrants in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

