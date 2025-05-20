
package Paws::Inspector2::BatchGetFreeTrialInfo;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetFreeTrialInfo');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/freetrialinfo/batchget');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::BatchGetFreeTrialInfoResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetFreeTrialInfo - Arguments for method BatchGetFreeTrialInfo on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetFreeTrialInfo on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method BatchGetFreeTrialInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetFreeTrialInfo.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $BatchGetFreeTrialInfoResponse = $inspector2->BatchGetFreeTrialInfo(
      AccountIds => [ 'MyMeteringAccountId', ... ],

    );

    # Results:
    my $Accounts       = $BatchGetFreeTrialInfoResponse->Accounts;
    my $FailedAccounts = $BatchGetFreeTrialInfoResponse->FailedAccounts;

    # Returns a L<Paws::Inspector2::BatchGetFreeTrialInfoResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/BatchGetFreeTrialInfo>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The account IDs to get free trial status for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetFreeTrialInfo in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

