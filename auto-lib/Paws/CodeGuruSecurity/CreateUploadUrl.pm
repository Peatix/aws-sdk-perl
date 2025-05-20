
package Paws::CodeGuruSecurity::CreateUploadUrl;
  use Moose;
  has ScanName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUploadUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/uploadUrl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::CreateUploadUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::CreateUploadUrl - Arguments for method CreateUploadUrl on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUploadUrl on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method CreateUploadUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUploadUrl.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $CreateUploadUrlResponse = $codeguru -security->CreateUploadUrl(
      ScanName => 'MyScanName',

    );

    # Results:
    my $CodeArtifactId = $CreateUploadUrlResponse->CodeArtifactId;
    my $RequestHeaders = $CreateUploadUrlResponse->RequestHeaders;
    my $S3Url          = $CreateUploadUrlResponse->S3Url;

    # Returns a L<Paws::CodeGuruSecurity::CreateUploadUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/CreateUploadUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScanName => Str

The name of the scan that will use the uploaded resource. CodeGuru
Security uses the unique scan name to track revisions across multiple
scans of the same resource. Use this C<scanName> when you call
C<CreateScan> on the code resource you upload to this URL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUploadUrl in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

