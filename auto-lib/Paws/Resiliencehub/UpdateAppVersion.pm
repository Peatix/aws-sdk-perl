
package Paws::Resiliencehub::UpdateAppVersion;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::Resiliencehub::AdditionalInfoMap', traits => ['NameInRequest'], request_name => 'additionalInfo');
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-app-version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::UpdateAppVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::UpdateAppVersion - Arguments for method UpdateAppVersion on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppVersion on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method UpdateAppVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppVersion.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $UpdateAppVersionResponse = $resiliencehub->UpdateAppVersion(
      AppArn         => 'MyArn',
      AdditionalInfo => {
        'MyString128WithoutWhitespace' => [
          'MyString1024', ...    # min: 1, max: 1024
        ],    # , value: min: 1, max: 10
      },    # OPTIONAL
    );

    # Results:
    my $AdditionalInfo = $UpdateAppVersionResponse->AdditionalInfo;
    my $AppArn         = $UpdateAppVersionResponse->AppArn;
    my $AppVersion     = $UpdateAppVersionResponse->AppVersion;

    # Returns a L<Paws::Resiliencehub::UpdateAppVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/UpdateAppVersion>

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>

Additional configuration parameters for an Resilience Hub application.
If you want to implement C<additionalInfo> through the Resilience Hub
console rather than using an API call, see Configure the application
configuration parameters
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html).

Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.

Key: C<"failover-regions">

Value: C<"[{"region":"E<lt>REGIONE<gt>",
"accounts":[{"id":"E<lt>ACCOUNT_IDE<gt>"}]}]">



=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppVersion in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

