
package Paws::Inspector2::BatchGetAccountStatus;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetAccountStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/status/batch/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::BatchGetAccountStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetAccountStatus - Arguments for method BatchGetAccountStatus on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetAccountStatus on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method BatchGetAccountStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetAccountStatus.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $BatchGetAccountStatusResponse = $inspector2->BatchGetAccountStatus(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
    );

    # Results:
    my $Accounts       = $BatchGetAccountStatusResponse->Accounts;
    my $FailedAccounts = $BatchGetAccountStatusResponse->FailedAccounts;

    # Returns a L<Paws::Inspector2::BatchGetAccountStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/BatchGetAccountStatus>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The 12-digit Amazon Web Services account IDs of the accounts to
retrieve Amazon Inspector status for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetAccountStatus in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

