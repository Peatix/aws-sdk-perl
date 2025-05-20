
package Paws::RolesAnywhere::ImportCrl;
  use Moose;
  has CrlData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'crlData', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TrustAnchorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trustAnchorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportCrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/crls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::CrlDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ImportCrl - Arguments for method ImportCrl on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportCrl on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method ImportCrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportCrl.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $CrlDetailResponse = $rolesanywhere->ImportCrl(
      CrlData        => 'BlobImportCrlRequestCrlDataBlob',
      Name           => 'MyResourceName',
      TrustAnchorArn => 'MyTrustAnchorArn',
      Enabled        => 1,                                   # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Crl = $CrlDetailResponse->Crl;

    # Returns a L<Paws::RolesAnywhere::CrlDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/ImportCrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrlData => Str

The x509 v3 specified certificate revocation list (CRL).



=head2 Enabled => Bool

Specifies whether the certificate revocation list (CRL) is enabled.



=head2 B<REQUIRED> Name => Str

The name of the certificate revocation list (CRL).



=head2 Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]

A list of tags to attach to the certificate revocation list (CRL).



=head2 B<REQUIRED> TrustAnchorArn => Str

The ARN of the TrustAnchor the certificate revocation list (CRL) will
provide revocation for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportCrl in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

