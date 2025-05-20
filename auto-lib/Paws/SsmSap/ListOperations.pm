
package Paws::SsmSap::ListOperations;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOperations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-operations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::ListOperationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListOperations - Arguments for method ListOperations on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOperations on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method ListOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOperations.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $ListOperationsOutput = $ssm -sap->ListOperations(
      ApplicationId => 'MyApplicationId',
      Filters       => [
        {
          Name     => 'MyFilterName',    # min: 1, max: 32
          Operator =>
            'Equals',    # values: Equals, GreaterThanOrEquals, LessThanOrEquals
          Value => 'MyFilterValue',    # min: 1, max: 64

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListOperationsOutput->NextToken;
    my $Operations = $ListOperationsOutput->Operations;

    # Returns a L<Paws::SsmSap::ListOperationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/ListOperations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application.



=head2 Filters => ArrayRef[L<Paws::SsmSap::Filter>]

The filters of an operation.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned nextToken
value. If you do not specify a value for MaxResults, the request
returns 50 items per page by default.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOperations in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

