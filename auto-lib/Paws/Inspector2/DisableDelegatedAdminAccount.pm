
package Paws::Inspector2::DisableDelegatedAdminAccount;
  use Moose;
  has DelegatedAdminAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'delegatedAdminAccountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableDelegatedAdminAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delegatedadminaccounts/disable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::DisableDelegatedAdminAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::DisableDelegatedAdminAccount - Arguments for method DisableDelegatedAdminAccount on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableDelegatedAdminAccount on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method DisableDelegatedAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableDelegatedAdminAccount.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $DisableDelegatedAdminAccountResponse =
      $inspector2->DisableDelegatedAdminAccount(
      DelegatedAdminAccountId => 'MyAccountId',

      );

    # Results:
    my $DelegatedAdminAccountId =
      $DisableDelegatedAdminAccountResponse->DelegatedAdminAccountId;

   # Returns a L<Paws::Inspector2::DisableDelegatedAdminAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/DisableDelegatedAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegatedAdminAccountId => Str

The Amazon Web Services account ID of the current Amazon Inspector
delegated administrator.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableDelegatedAdminAccount in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

