
package Paws::SavingsPlans::ReturnSavingsPlan;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has SavingsPlanId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsPlanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReturnSavingsPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ReturnSavingsPlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SavingsPlans::ReturnSavingsPlanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::ReturnSavingsPlan - Arguments for method ReturnSavingsPlan on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReturnSavingsPlan on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method ReturnSavingsPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReturnSavingsPlan.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $ReturnSavingsPlanResponse = $savingsplans->ReturnSavingsPlan(
      SavingsPlanId => 'MySavingsPlanId',
      ClientToken   => 'MyClientToken',     # OPTIONAL
    );

    # Results:
    my $SavingsPlanId = $ReturnSavingsPlanResponse->SavingsPlanId;

    # Returns a L<Paws::SavingsPlans::ReturnSavingsPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/ReturnSavingsPlan>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> SavingsPlanId => Str

The ID of the Savings Plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReturnSavingsPlan in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

