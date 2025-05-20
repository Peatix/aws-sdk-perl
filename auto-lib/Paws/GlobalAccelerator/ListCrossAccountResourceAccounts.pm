
package Paws::GlobalAccelerator::ListCrossAccountResourceAccounts;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCrossAccountResourceAccounts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ListCrossAccountResourceAccountsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCrossAccountResourceAccounts - Arguments for method ListCrossAccountResourceAccounts on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCrossAccountResourceAccounts on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ListCrossAccountResourceAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCrossAccountResourceAccounts.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ListCrossAccountResourceAccountsResponse =
      $globalaccelerator->ListCrossAccountResourceAccounts();

    # Results:
    my $ResourceOwnerAwsAccountIds =
      $ListCrossAccountResourceAccountsResponse->ResourceOwnerAwsAccountIds;

# Returns a L<Paws::GlobalAccelerator::ListCrossAccountResourceAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ListCrossAccountResourceAccounts>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCrossAccountResourceAccounts in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

