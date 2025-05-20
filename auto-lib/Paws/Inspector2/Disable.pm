
package Paws::Inspector2::Disable;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceTypes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Disable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/disable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::DisableResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::Disable - Arguments for method Disable on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Disable on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method Disable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Disable.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $DisableResponse = $inspector2->Disable(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      ResourceTypes => [
        'EC2', ...    # values: EC2, ECR, LAMBDA, LAMBDA_CODE
      ],    # OPTIONAL
    );

    # Results:
    my $Accounts       = $DisableResponse->Accounts;
    my $FailedAccounts = $DisableResponse->FailedAccounts;

    # Returns a L<Paws::Inspector2::DisableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/Disable>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

An array of account IDs you want to disable Amazon Inspector scans for.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The resource scan types you want to disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Disable in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

