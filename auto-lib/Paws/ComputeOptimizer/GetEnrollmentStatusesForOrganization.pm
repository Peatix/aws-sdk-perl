
package Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganization;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::EnrollmentFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnrollmentStatusesForOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganization - Arguments for method GetEnrollmentStatusesForOrganization on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnrollmentStatusesForOrganization on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetEnrollmentStatusesForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnrollmentStatusesForOrganization.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetEnrollmentStatusesForOrganizationResponse =
      $compute -optimizer->GetEnrollmentStatusesForOrganization(
      Filters => [
        {
          Name   => 'Status',                    # values: Status; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AccountEnrollmentStatuses =
      $GetEnrollmentStatusesForOrganizationResponse->AccountEnrollmentStatuses;
    my $NextToken = $GetEnrollmentStatusesForOrganizationResponse->NextToken;

# Returns a L<Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetEnrollmentStatusesForOrganization>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::EnrollmentFilter>]

An array of objects to specify a filter that returns a more specific
list of account enrollment statuses.



=head2 MaxResults => Int

The maximum number of account enrollment statuses to return with a
single request. You can specify up to 100 statuses to return with each
request.

To retrieve the remaining results, make another request with the
returned C<nextToken> value.



=head2 NextToken => Str

The token to advance to the next page of account enrollment statuses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnrollmentStatusesForOrganization in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

