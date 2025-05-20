
package Paws::Resiliencehub::DeleteAppInputSource;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EksSourceClusterNamespace => (is => 'ro', isa => 'Paws::Resiliencehub::EksSourceClusterNamespace', traits => ['NameInRequest'], request_name => 'eksSourceClusterNamespace');
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceArn');
  has TerraformSource => (is => 'ro', isa => 'Paws::Resiliencehub::TerraformSource', traits => ['NameInRequest'], request_name => 'terraformSource');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAppInputSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-app-input-source');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DeleteAppInputSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteAppInputSource - Arguments for method DeleteAppInputSource on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAppInputSource on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DeleteAppInputSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAppInputSource.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DeleteAppInputSourceResponse = $resiliencehub->DeleteAppInputSource(
      AppArn                    => 'MyArn',
      ClientToken               => 'MyClientToken',    # OPTIONAL
      EksSourceClusterNamespace => {
        EksClusterArn => 'MyArn',
        Namespace     => 'MyEksNamespace',             # min: 1, max: 63

      },    # OPTIONAL
      SourceArn       => 'MyArn',    # OPTIONAL
      TerraformSource => {
        S3StateFileUrl => 'MyS3Url',    # max: 2000

      },    # OPTIONAL
    );

    # Results:
    my $AppArn         = $DeleteAppInputSourceResponse->AppArn;
    my $AppInputSource = $DeleteAppInputSourceResponse->AppInputSource;

    # Returns a L<Paws::Resiliencehub::DeleteAppInputSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DeleteAppInputSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.



=head2 EksSourceClusterNamespace => L<Paws::Resiliencehub::EksSourceClusterNamespace>

The namespace on your Amazon Elastic Kubernetes Service cluster that
you want to delete from the Resilience Hub application.



=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the imported resource you want to
remove from the Resilience Hub application. For more information about
ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 TerraformSource => L<Paws::Resiliencehub::TerraformSource>

The imported Terraform s3 state le you want to remove from the
Resilience Hub application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAppInputSource in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

