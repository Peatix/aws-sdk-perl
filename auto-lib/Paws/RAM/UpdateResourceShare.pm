
package Paws::RAM::UpdateResourceShare;
  use Moose;
  has AllowExternalPrincipals => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowExternalPrincipals');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateresourceshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::UpdateResourceShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::UpdateResourceShare - Arguments for method UpdateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method UpdateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $UpdateResourceShareResponse = $ram->UpdateResourceShare(
      ResourceShareArn        => 'MyString',
      AllowExternalPrincipals => 1,             # OPTIONAL
      ClientToken             => 'MyString',    # OPTIONAL
      Name                    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken   = $UpdateResourceShareResponse->ClientToken;
    my $ResourceShare = $UpdateResourceShareResponse->ResourceShare;

    # Returns a L<Paws::RAM::UpdateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/UpdateResourceShare>

=head1 ATTRIBUTES


=head2 AllowExternalPrincipals => Bool

Specifies whether principals outside your organization in Organizations
can be associated with a resource share.



=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value.
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 Name => Str

If specified, the new name that you want to attach to the resource
share.



=head2 B<REQUIRED> ResourceShareArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share that you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

