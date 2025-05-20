
package Paws::Billing::CreateBillingView;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has DataFilterExpression => (is => 'ro', isa => 'Paws::Billing::Expression', traits => ['NameInRequest'], request_name => 'dataFilterExpression' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Billing::ResourceTag]', traits => ['NameInRequest'], request_name => 'resourceTags' );
  has SourceViews => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sourceViews' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBillingView');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billing::CreateBillingViewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::CreateBillingView - Arguments for method CreateBillingView on L<Paws::Billing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBillingView on the
L<AWS Billing|Paws::Billing> service. Use the attributes of this class
as arguments to method CreateBillingView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBillingView.

=head1 SYNOPSIS

    my $billing = Paws->service('Billing');
    my $CreateBillingViewResponse = $billing->CreateBillingView(
      Name                 => 'MyBillingViewName',
      SourceViews          => [ 'MyBillingViewArn', ... ],
      ClientToken          => 'MyClientToken',               # OPTIONAL
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
      Description  => 'MyBillingViewDescription',    # OPTIONAL
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateBillingViewResponse->Arn;
    my $CreatedAt = $CreateBillingViewResponse->CreatedAt;

    # Returns a L<Paws::Billing::CreateBillingViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billing/CreateBillingView>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier you specify to ensure idempotency
of the request. Idempotency ensures that an API request completes no
more than one time. If the original request completes successfully, any
subsequent retries complete successfully without performing any further
actions with an idempotent request.



=head2 DataFilterExpression => L<Paws::Billing::Expression>

See Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html).
Billing view only supports C<LINKED_ACCOUNT> and C<Tags>.



=head2 Description => Str

The description of the billing view.



=head2 B<REQUIRED> Name => Str

The name of the billing view.



=head2 ResourceTags => ArrayRef[L<Paws::Billing::ResourceTag>]

A list of key value map specifying tags associated to the billing view
being created.



=head2 B<REQUIRED> SourceViews => ArrayRef[Str|Undef]

A list of billing views used as the data source for the custom billing
view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBillingView in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

