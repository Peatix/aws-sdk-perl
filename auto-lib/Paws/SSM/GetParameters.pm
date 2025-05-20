
package Paws::SSM::GetParameters;
  use Moose;
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has WithDecryption => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParameters - Arguments for method GetParameters on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParameters on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParameters.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetParametersResult = $ssm->GetParameters(
      Names => [
        'MyPSParameterName', ...    # min: 1, max: 2048
      ],
      WithDecryption => 1,          # OPTIONAL
    );

    # Results:
    my $InvalidParameters = $GetParametersResult->InvalidParameters;
    my $Parameters        = $GetParametersResult->Parameters;

    # Returns a L<Paws::SSM::GetParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Names => ArrayRef[Str|Undef]

The names or Amazon Resource Names (ARNs) of the parameters that you
want to query. For parameters shared with you from another account, you
must use the full ARNs.

To query by parameter label, use C<"Name": "name:label">. To query by
parameter version, use C<"Name": "name:version">.

The results for C<GetParameters> requests are listed in alphabetical
order in query responses.

For information about shared parameters, see Working with shared
parameters
(https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 WithDecryption => Bool

Return decrypted secure string value. Return decrypted values for
secure string parameters. This flag is ignored for C<String> and
C<StringList> parameter types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParameters in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

