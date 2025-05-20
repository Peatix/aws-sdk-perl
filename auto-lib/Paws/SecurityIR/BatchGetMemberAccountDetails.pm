
package Paws::SecurityIR::BatchGetMemberAccountDetails;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetMemberAccountDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/membership/{membershipId}/batch-member-details');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::BatchGetMemberAccountDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::BatchGetMemberAccountDetails - Arguments for method BatchGetMemberAccountDetails on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetMemberAccountDetails on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method BatchGetMemberAccountDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetMemberAccountDetails.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $BatchGetMemberAccountDetailsResponse =
      $security -ir->BatchGetMemberAccountDetails(
      AccountIds => [
        'MyAWSAccountId', ...    # min: 12, max: 12
      ],
      MembershipId => 'MyMembershipId',

      );

    # Results:
    my $Errors = $BatchGetMemberAccountDetailsResponse->Errors;
    my $Items  = $BatchGetMemberAccountDetailsResponse->Items;

   # Returns a L<Paws::SecurityIR::BatchGetMemberAccountDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/BatchGetMemberAccountDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

Optional element to query the membership relationship status to a
provided list of account IDs.



=head2 B<REQUIRED> MembershipId => Str

Required element used in combination with BatchGetMemberAccountDetails
to identify the membership ID to query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetMemberAccountDetails in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

