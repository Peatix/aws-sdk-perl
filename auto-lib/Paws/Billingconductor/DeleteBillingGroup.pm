
package Paws::Billingconductor::DeleteBillingGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBillingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-billing-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::DeleteBillingGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::DeleteBillingGroup - Arguments for method DeleteBillingGroup on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBillingGroup on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method DeleteBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBillingGroup.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $DeleteBillingGroupOutput = $billingconductor->DeleteBillingGroup(
      Arn => 'MyBillingGroupArn',

    );

    # Results:
    my $Arn = $DeleteBillingGroupOutput->Arn;

    # Returns a L<Paws::Billingconductor::DeleteBillingGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/DeleteBillingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the billing group that you're
deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBillingGroup in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

