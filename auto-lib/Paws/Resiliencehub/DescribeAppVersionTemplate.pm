
package Paws::Resiliencehub::DescribeAppVersionTemplate;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppVersionTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-app-version-template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DescribeAppVersionTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeAppVersionTemplate - Arguments for method DescribeAppVersionTemplate on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppVersionTemplate on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DescribeAppVersionTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppVersionTemplate.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DescribeAppVersionTemplateResponse =
      $resiliencehub->DescribeAppVersionTemplate(
      AppArn     => 'MyArn',
      AppVersion => 'MyEntityVersion',

      );

    # Results:
    my $AppArn          = $DescribeAppVersionTemplateResponse->AppArn;
    my $AppTemplateBody = $DescribeAppVersionTemplateResponse->AppTemplateBody;
    my $AppVersion      = $DescribeAppVersionTemplateResponse->AppVersion;

  # Returns a L<Paws::Resiliencehub::DescribeAppVersionTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DescribeAppVersionTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> AppVersion => Str

The version of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppVersionTemplate in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

