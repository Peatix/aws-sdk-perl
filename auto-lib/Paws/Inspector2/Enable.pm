
package Paws::Inspector2::Enable;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceTypes', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Enable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/enable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::EnableResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::Enable - Arguments for method Enable on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Enable on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method Enable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Enable.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $EnableResponse = $inspector2->Enable(
      ResourceTypes => [
        'EC2', ...    # values: EC2, ECR, LAMBDA, LAMBDA_CODE
      ],
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $Accounts       = $EnableResponse->Accounts;
    my $FailedAccounts = $EnableResponse->FailedAccounts;

    # Returns a L<Paws::Inspector2::EnableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/Enable>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of account IDs you want to enable Amazon Inspector scans for.



=head2 ClientToken => Str

The idempotency token for the request.



=head2 B<REQUIRED> ResourceTypes => ArrayRef[Str|Undef]

The resource scan types you want to enable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Enable in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

