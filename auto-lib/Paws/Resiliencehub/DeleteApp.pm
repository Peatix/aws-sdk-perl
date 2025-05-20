
package Paws::Resiliencehub::DeleteApp;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-app');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DeleteAppResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteApp - Arguments for method DeleteApp on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApp on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DeleteApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApp.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DeleteAppResponse = $resiliencehub->DeleteApp(
      AppArn      => 'MyArn',
      ClientToken => 'MyClientToken',    # OPTIONAL
      ForceDelete => 1,                  # OPTIONAL
    );

    # Results:
    my $AppArn = $DeleteAppResponse->AppArn;

    # Returns a L<Paws::Resiliencehub::DeleteAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DeleteApp>

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



=head2 ForceDelete => Bool

A boolean option to force the deletion of an Resilience Hub
application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApp in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

