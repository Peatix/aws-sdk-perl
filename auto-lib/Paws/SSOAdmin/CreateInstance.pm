
package Paws::SSOAdmin::CreateInstance;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::CreateInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateInstance - Arguments for method CreateInstance on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstance on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method CreateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstance.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $CreateInstanceResponse = $sso->CreateInstance(
      ClientToken => 'MyClientToken',    # OPTIONAL
      Name        => 'MyNameType',       # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $InstanceArn = $CreateInstanceResponse->InstanceArn;

    # Returns a L<Paws::SSOAdmin::CreateInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/CreateInstance>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive ID that you provide to ensure the
idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that
you also pass the same value for all other parameters. We recommend
that you use a UUID type of value
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 Name => Str

The name of the instance of IAM Identity Center.



=head2 Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

Specifies tags to be attached to the instance of IAM Identity Center.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstance in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

