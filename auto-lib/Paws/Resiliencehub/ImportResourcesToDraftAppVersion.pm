
package Paws::Resiliencehub::ImportResourcesToDraftAppVersion;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has EksSources => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::EksSource]', traits => ['NameInRequest'], request_name => 'eksSources');
  has ImportStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importStrategy');
  has SourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sourceArns');
  has TerraformSources => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::TerraformSource]', traits => ['NameInRequest'], request_name => 'terraformSources');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportResourcesToDraftAppVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/import-resources-to-draft-app-version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ImportResourcesToDraftAppVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ImportResourcesToDraftAppVersion - Arguments for method ImportResourcesToDraftAppVersion on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportResourcesToDraftAppVersion on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ImportResourcesToDraftAppVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportResourcesToDraftAppVersion.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ImportResourcesToDraftAppVersionResponse =
      $resiliencehub->ImportResourcesToDraftAppVersion(
      AppArn     => 'MyArn',
      EksSources => [
        {
          EksClusterArn => 'MyArn',
          Namespaces    => [
            'MyEksNamespace', ...    # min: 1, max: 63
          ],

        },
        ...
      ],    # OPTIONAL
      ImportStrategy   => 'AddOnly',           # OPTIONAL
      SourceArns       => [ 'MyArn', ... ],    # OPTIONAL
      TerraformSources => [
        {
          S3StateFileUrl => 'MyS3Url',         # max: 2000

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AppArn     = $ImportResourcesToDraftAppVersionResponse->AppArn;
    my $AppVersion = $ImportResourcesToDraftAppVersionResponse->AppVersion;
    my $EksSources = $ImportResourcesToDraftAppVersionResponse->EksSources;
    my $SourceArns = $ImportResourcesToDraftAppVersionResponse->SourceArns;
    my $Status     = $ImportResourcesToDraftAppVersionResponse->Status;
    my $TerraformSources =
      $ImportResourcesToDraftAppVersionResponse->TerraformSources;

# Returns a L<Paws::Resiliencehub::ImportResourcesToDraftAppVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ImportResourcesToDraftAppVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 EksSources => ArrayRef[L<Paws::Resiliencehub::EksSource>]

The input sources of the Amazon Elastic Kubernetes Service resources
you need to import.



=head2 ImportStrategy => Str

The import strategy you would like to set to import resources into
Resilience Hub application.

Valid values are: C<"AddOnly">, C<"ReplaceAll">

=head2 SourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) for the resources.



=head2 TerraformSources => ArrayRef[L<Paws::Resiliencehub::TerraformSource>]

A list of terraform file s3 URLs you need to import.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportResourcesToDraftAppVersion in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

