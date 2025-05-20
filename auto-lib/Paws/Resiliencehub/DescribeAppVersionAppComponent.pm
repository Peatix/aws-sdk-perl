
package Paws::Resiliencehub::DescribeAppVersionAppComponent;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppVersionAppComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-app-version-app-component');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DescribeAppVersionAppComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeAppVersionAppComponent - Arguments for method DescribeAppVersionAppComponent on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppVersionAppComponent on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DescribeAppVersionAppComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppVersionAppComponent.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DescribeAppVersionAppComponentResponse =
      $resiliencehub->DescribeAppVersionAppComponent(
      AppArn     => 'MyArn',
      AppVersion => 'MyEntityVersion',
      Id         => 'MyString255',

      );

    # Results:
    my $AppArn       = $DescribeAppVersionAppComponentResponse->AppArn;
    my $AppComponent = $DescribeAppVersionAppComponentResponse->AppComponent;
    my $AppVersion   = $DescribeAppVersionAppComponentResponse->AppVersion;

# Returns a L<Paws::Resiliencehub::DescribeAppVersionAppComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DescribeAppVersionAppComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> AppVersion => Str

Resilience Hub application version.



=head2 B<REQUIRED> Id => Str

Identifier of the Application Component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppVersionAppComponent in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

