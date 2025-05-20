
package Paws::AppSync::CreateDomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppSync::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domainnames');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateDomainNameResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateDomainName - Arguments for method CreateDomainName on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainName on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainName.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateDomainNameResponse = $appsync->CreateDomainName(
      CertificateArn => 'MyCertificateArn',
      DomainName     => 'MyDomainName',
      Description    => 'MyDescription',      # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DomainNameConfig = $CreateDomainNameResponse->DomainNameConfig;

    # Returns a L<Paws::AppSync::CreateDomainNameResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateDomainName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate. This can be an
Certificate Manager (ACM) certificate or an Identity and Access
Management (IAM) server certificate.



=head2 Description => Str

A description of the C<DomainName>.



=head2 B<REQUIRED> DomainName => Str

The domain name.



=head2 Tags => L<Paws::AppSync::TagMap>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainName in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

