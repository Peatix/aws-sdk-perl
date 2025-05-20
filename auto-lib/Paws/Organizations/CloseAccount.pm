
package Paws::Organizations::CloseAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CloseAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CloseAccount - Arguments for method CloseAccount on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CloseAccount on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CloseAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CloseAccount.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->CloseAccount(
      AccountId => 'MyAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CloseAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

Retrieves the Amazon Web Services account Id for the current
C<CloseAccount> API request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CloseAccount in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

