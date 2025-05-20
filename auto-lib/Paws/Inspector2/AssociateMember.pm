
package Paws::Inspector2::AssociateMember;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members/associate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::AssociateMemberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::AssociateMember - Arguments for method AssociateMember on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMember on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method AssociateMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMember.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $AssociateMemberResponse = $inspector2->AssociateMember(
      AccountId => 'MyAccountId',

    );

    # Results:
    my $AccountId = $AssociateMemberResponse->AccountId;

    # Returns a L<Paws::Inspector2::AssociateMemberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/AssociateMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the member account to be
associated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMember in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

