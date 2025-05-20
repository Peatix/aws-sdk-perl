
package Paws::Billing::DeleteBillingView;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBillingView');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billing::DeleteBillingViewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::DeleteBillingView - Arguments for method DeleteBillingView on L<Paws::Billing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBillingView on the
L<AWS Billing|Paws::Billing> service. Use the attributes of this class
as arguments to method DeleteBillingView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBillingView.

=head1 SYNOPSIS

    my $billing = Paws->service('Billing');
    my $DeleteBillingViewResponse = $billing->DeleteBillingView(
      Arn => 'MyBillingViewArn',

    );

    # Results:
    my $Arn = $DeleteBillingViewResponse->Arn;

    # Returns a L<Paws::Billing::DeleteBillingViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billing/DeleteBillingView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that can be used to uniquely identify
the billing view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBillingView in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

