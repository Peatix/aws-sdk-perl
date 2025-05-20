
package Paws::S3Control::CreateAccessGrant;
  use Moose;
  has AccessGrantsLocationConfiguration => (is => 'ro', isa => 'Paws::S3Control::AccessGrantsLocationConfiguration');
  has AccessGrantsLocationId => (is => 'ro', isa => 'Str', required => 1);
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has Grantee => (is => 'ro', isa => 'Paws::S3Control::Grantee', required => 1);
  has Permission => (is => 'ro', isa => 'Str', required => 1);
  has S3PrefixType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::Tag]', request_name => 'Tag', traits => ['NameInRequest']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/grant');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::CreateAccessGrantResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateAccessGrantRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessGrant - Arguments for method CreateAccessGrant on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessGrant on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method CreateAccessGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessGrant.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $CreateAccessGrantResult = $s3 -control->CreateAccessGrant(
      AccessGrantsLocationId => 'MyAccessGrantsLocationId',
      AccountId              => 'MyAccountId',
      Grantee                => {
        GranteeIdentifier => 'MyGranteeIdentifier',    # OPTIONAL
        GranteeType       => 'DIRECTORY_USER'
        ,    # values: DIRECTORY_USER, DIRECTORY_GROUP, IAM; OPTIONAL
      },
      Permission                        => 'READ',
      AccessGrantsLocationConfiguration => {
        S3SubPrefix => 'MyS3Prefix',    # min: 1, max: 2000; OPTIONAL
      },    # OPTIONAL
      ApplicationArn => 'MyIdentityCenterApplicationArn',    # OPTIONAL
      S3PrefixType   => 'Object',                            # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 128
          Value => 'MyTagValueString',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AccessGrantArn = $CreateAccessGrantResult->AccessGrantArn;
    my $AccessGrantId  = $CreateAccessGrantResult->AccessGrantId;
    my $AccessGrantsLocationConfiguration =
      $CreateAccessGrantResult->AccessGrantsLocationConfiguration;
    my $AccessGrantsLocationId =
      $CreateAccessGrantResult->AccessGrantsLocationId;
    my $ApplicationArn = $CreateAccessGrantResult->ApplicationArn;
    my $CreatedAt      = $CreateAccessGrantResult->CreatedAt;
    my $GrantScope     = $CreateAccessGrantResult->GrantScope;
    my $Grantee        = $CreateAccessGrantResult->Grantee;
    my $Permission     = $CreateAccessGrantResult->Permission;

    # Returns a L<Paws::S3Control::CreateAccessGrantResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/CreateAccessGrant>

=head1 ATTRIBUTES


=head2 AccessGrantsLocationConfiguration => L<Paws::S3Control::AccessGrantsLocationConfiguration>

The configuration options of the grant location. The grant location is
the S3 path to the data to which you are granting access. It contains
the C<S3SubPrefix> field. The grant scope is the result of appending
the subprefix to the location scope of the registered location.



=head2 B<REQUIRED> AccessGrantsLocationId => Str

The ID of the registered location to which you are granting access. S3
Access Grants assigns this ID when you register the location. S3 Access
Grants assigns the ID C<default> to the default location C<s3://> and
assigns an auto-generated ID to other locations that you register.

If you are passing the C<default> location, you cannot create an access
grant for the entire default location. You must also specify a bucket
or a bucket and prefix in the C<Subprefix> field.



=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity
Center application associated with your Identity Center instance. If an
application ARN is included in the request to create an access grant,
the grantee can only access the S3 data through this application.



=head2 B<REQUIRED> Grantee => L<Paws::S3Control::Grantee>

The user, group, or role to which you are granting access. You can
grant access to an IAM user or role. If you have added your corporate
directory to Amazon Web Services IAM Identity Center and associated
your Identity Center instance with your S3 Access Grants instance, the
grantee can also be a corporate directory user or group.



=head2 B<REQUIRED> Permission => Str

The type of access that you are granting to your S3 data, which can be
set to one of the following values:

=over

=item *

C<READ> E<ndash> Grant read-only access to the S3 data.

=item *

C<WRITE> E<ndash> Grant write-only access to the S3 data.

=item *

C<READWRITE> E<ndash> Grant both read and write access to the S3 data.

=back


Valid values are: C<"READ">, C<"WRITE">, C<"READWRITE">

=head2 S3PrefixType => Str

The type of C<S3SubPrefix>. The only possible value is C<Object>. Pass
this value if the access grant scope is an object. Do not pass this
value if the access grant scope is a bucket or a bucket and a prefix.

Valid values are: C<"Object">

=head2 Tags => ArrayRef[L<Paws::S3Control::Tag>]

The Amazon Web Services resource tags that you are adding to the access
grant. Each tag is a label consisting of a user-defined key and value.
Tags can help you manage, identify, organize, search for, and filter
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessGrant in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

