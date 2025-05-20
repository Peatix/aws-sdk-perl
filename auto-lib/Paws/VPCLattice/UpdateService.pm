
package Paws::VPCLattice::UpdateService;
  use Moose;
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateServiceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateService - Arguments for method UpdateService on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateServiceResponse = $vpc -lattice->UpdateService(
      ServiceIdentifier => 'MyServiceIdentifier',
      AuthType          => 'NONE',                  # OPTIONAL
      CertificateArn    => 'MyCertificateArn',      # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateServiceResponse->Arn;
    my $AuthType         = $UpdateServiceResponse->AuthType;
    my $CertificateArn   = $UpdateServiceResponse->CertificateArn;
    my $CustomDomainName = $UpdateServiceResponse->CustomDomainName;
    my $Id               = $UpdateServiceResponse->Id;
    my $Name             = $UpdateServiceResponse->Name;

    # Returns a L<Paws::VPCLattice::UpdateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateService>

=head1 ATTRIBUTES


=head2 AuthType => Str

The type of IAM policy.

=over

=item *

C<NONE>: The resource does not use an IAM policy. This is the default.

=item *

C<AWS_IAM>: The resource uses an IAM policy. When this type is used,
auth is enabled and an auth policy is required.

=back


Valid values are: C<"NONE">, C<"AWS_IAM">

=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

