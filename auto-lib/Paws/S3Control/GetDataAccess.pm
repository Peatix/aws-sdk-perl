
package Paws::S3Control::GetDataAccess;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has DurationSeconds => (is => 'ro', isa => 'Int', query_name => 'durationSeconds', traits => ['ParamInQuery']);
  has Permission => (is => 'ro', isa => 'Str', query_name => 'permission', traits => ['ParamInQuery'], required => 1);
  has Privilege => (is => 'ro', isa => 'Str', query_name => 'privilege', traits => ['ParamInQuery']);
  has Target => (is => 'ro', isa => 'Str', query_name => 'target', traits => ['ParamInQuery'], required => 1);
  has TargetType => (is => 'ro', isa => 'Str', query_name => 'targetType', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataAccess');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/dataaccess');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetDataAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetDataAccess - Arguments for method GetDataAccess on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataAccess on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetDataAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataAccess.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetDataAccessResult = $s3 -control->GetDataAccess(
      AccountId       => 'MyAccountId',
      Permission      => 'READ',
      Target          => 'MyS3Prefix',
      DurationSeconds => 1,               # OPTIONAL
      Privilege       => 'Minimal',       # OPTIONAL
      TargetType      => 'Object',        # OPTIONAL
    );

    # Results:
    my $Credentials        = $GetDataAccessResult->Credentials;
    my $Grantee            = $GetDataAccessResult->Grantee;
    my $MatchedGrantTarget = $GetDataAccessResult->MatchedGrantTarget;

    # Returns a L<Paws::S3Control::GetDataAccessResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetDataAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 DurationSeconds => Int

The session duration, in seconds, of the temporary access credential
that S3 Access Grants vends to the grantee or client application. The
default value is 1 hour, but the grantee can specify a range from 900
seconds (15 minutes) up to 43200 seconds (12 hours). If the grantee
requests a value higher than this maximum, the operation fails.



=head2 B<REQUIRED> Permission => Str

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

=head2 Privilege => Str

The scope of the temporary access credential that S3 Access Grants
vends to the grantee or client application.

=over

=item *

C<Default> E<ndash> The scope of the returned temporary access token is
the scope of the grant that is closest to the target scope.

=item *

C<Minimal> E<ndash> The scope of the returned temporary access token is
the same as the requested target scope as long as the requested scope
is the same as or a subset of the grant scope.

=back


Valid values are: C<"Minimal">, C<"Default">

=head2 B<REQUIRED> Target => Str

The S3 URI path of the data to which you are requesting temporary
access credentials. If the requesting account has an access grant for
this data, S3 Access Grants vends temporary access credentials in the
response.



=head2 TargetType => Str

The type of C<Target>. The only possible value is C<Object>. Pass this
value if the target data that you would like to access is a path to an
object. Do not pass this value if the target data is a bucket or a
bucket and a prefix.

Valid values are: C<"Object">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataAccess in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

