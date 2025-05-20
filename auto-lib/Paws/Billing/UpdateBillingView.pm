
package Paws::Billing::UpdateBillingView;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has DataFilterExpression => (is => 'ro', isa => 'Paws::Billing::Expression', traits => ['NameInRequest'], request_name => 'dataFilterExpression' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBillingView');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billing::UpdateBillingViewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::UpdateBillingView - Arguments for method UpdateBillingView on L<Paws::Billing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBillingView on the
L<AWS Billing|Paws::Billing> service. Use the attributes of this class
as arguments to method UpdateBillingView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBillingView.

=head1 SYNOPSIS

    my $billing = Paws->service('Billing');
    my $UpdateBillingViewResponse = $billing->UpdateBillingView(
      Arn                  => 'MyBillingViewArn',
      DataFilterExpression => {
        Dimensions => {
          Key    => 'LINKED_ACCOUNT',    # values: LINKED_ACCOUNT
          Values => [
            'MyValue', ...               # max: 1024
          ],    # min: 1, max: 200

        },    # OPTIONAL
        Tags => {
          Key    => 'MyTagKey',    # max: 1024
          Values => [
            'MyValue', ...         # max: 1024
          ],    # min: 1, max: 200

        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyBillingViewDescription',    # OPTIONAL
      Name        => 'MyBillingViewName',           # OPTIONAL
    );

    # Results:
    my $Arn       = $UpdateBillingViewResponse->Arn;
    my $UpdatedAt = $UpdateBillingViewResponse->UpdatedAt;

    # Returns a L<Paws::Billing::UpdateBillingViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billing/UpdateBillingView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that can be used to uniquely identify
the billing view.



=head2 DataFilterExpression => L<Paws::Billing::Expression>

See Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html).
Billing view only supports C<LINKED_ACCOUNT> and C<Tags>.



=head2 Description => Str

The description of the billing view.



=head2 Name => Str

The name of the billing view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBillingView in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

